class EmergencyGroup < ActiveRecord::Base
  attr_accessible :name, :pharmacy_ids, :event_ids, :website_title, :website_note
  has_many :pharmacies
  validates :pharmacy_ids, presence: true
  
  accepts_nested_attributes_for :pharmacies
end
