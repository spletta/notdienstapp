#require 'enumerated_attribute'

class Event < ActiveRecord::Base
  attr_accessible :pharmacy_id, :starttime, :endtime, :description, :title, :all_day, :color
  belongs_to :pharmacy
  validates :pharmacy_id, presence: true
  
  COLORS = ["Weiss", "Blau", "Hellblau", "Gruen", "Gelb", "Rot", "Grau", "Standard" ]
  
  accepts_nested_attributes_for :pharmacy
  
  default_scope { where(account_id: Account.current_id) }

  def starttime=(v)
    write_attribute :starttime, DateTime.strptime(v, '%d.%m.%Y %H:%M')
  end

  def endtime=(v)
    write_attribute :endtime, DateTime.strptime(v, '%d.%m.%Y %H:%M')
  end
 
end
