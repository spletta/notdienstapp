#require 'enumerated_attribute'

class Event < ActiveRecord::Base
  attr_accessor :recurring_date
  attr_accessible :pharmacy_id, :starttime, :endtime, :description, :title, :all_day, :color,
    :recurring, :recurring_interval, :recurring_period, :recurring_endtime
  belongs_to :pharmacy
  validates :pharmacy_id, presence: true
  
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

  #SELECT current_date + s.i * interval '1 day', e.id FROM events e JOIN generate_series(0,30) AS s(i) ON (extract('hour' from (DATE_TRUNC('day', current_date + s.i * interval '1 day') - DATE_TRUNC('day',e.starttime)) / e.recurring_period) = 0);
  scope :recurring_events_within_month, lambda { |date|
    pg_date = date.iso8601
    base_date = "DATE('#{pg_date}') + s.i * interval '1 day'"
    select("#{base_date} as recurring_date, events.id").
      joins("JOIN generate_series(0,30) AS s(i) " +
          "ON (extract('hour' from (DATE_TRUNC('day', #{base_date}) - DATE_TRUNC('day',events.starttime)) / events.recurring_period) = 0)")
  }
 
end
