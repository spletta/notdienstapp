#require 'enumerated_attribute'

class Event < ActiveRecord::Base
  attr_accessor :recurring_date
  attr_accessible :pharmacy_id, :starttime, :endtime, :description, :title, :all_day, :color,
    :recurring, :recurring_interval, :recurring_period, :recurring_endtime
  belongs_to :pharmacy
  #validates :pharmacy_id, presence: true
  
  COLORS = ["Weiss", "Blau", "Hellblau", "Gruen", "Gelb", "Rot", "Grau", "Standard" ]
  INTERVALS = [:day, :week, :month, :year]
  PERIODS = (1..30).to_a
  
  accepts_nested_attributes_for :pharmacy
  
  default_scope { where(account_id: Account.current_id) }

  def starttime=(v)
    write_attribute :starttime, DateTime.strptime(v, '%d.%m.%Y %H:%M')
  end

  def endtime=(v)
    write_attribute :endtime, DateTime.strptime(v, '%d.%m.%Y %H:%M')
  end

  def recurring_endtime=(v)
    super(v.blank? ? nil : DateTime.strptime(v, '%d.%m.%Y %H:%M'))
  end

  scope :recurring_events_within_month_for_day, lambda { |date, type, n|
    pg_date = date.beginning_of_month.iso8601
    base_date = "DATE('#{pg_date}') + s.i * interval '1 day'"
    diff = "(DATE_TRUNC('day', #{base_date}) - DATE_TRUNC('day',starttime)) / (recurring_period * #{n})"
    select("#{base_date} as recurring_date, events.*").
      joins("JOIN generate_series(0,30) AS s(i) " +
          "ON (extract(hour from #{diff}) = 0 AND extract(minute from #{diff}) = 0)").
      where("recurring AND (recurring_endtime > #{base_date} OR recurring_endtime IS NULL)" +
        " AND recurring_interval = '#{type}' AND starttime < #{base_date}")
  }

  def self.recurring_events_within_month(date)
    { day:1, week: 7, month: 30, year: 365 }.map { |type, n|
      self.recurring_events_within_month_for_day(date, type, n)
    }.flatten(1)
  end
 
end
