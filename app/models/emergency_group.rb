class EmergencyGroup < ActiveRecord::Base
  attr_accessible :name
  has_many :pharmacies
  validates :pharmacy_id, presence: true
end
