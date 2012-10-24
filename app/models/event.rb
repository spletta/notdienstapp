class Event < ActiveRecord::Base
  attr_accessible :pharmacy_id, :starttime, :endtime, :description, :title, :all_day, :emergency_group_id
  belongs_to :pharmacy
  belongs_to :emergency_group
  validates :pharmacy_id, presence: true
  
  accepts_nested_attributes_for :pharmacy, :emergency_group
end
