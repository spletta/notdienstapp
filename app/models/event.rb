class Event < ActiveRecord::Base
  attr_accessible :pharmacy_id, :starttime, :endtime, :description, :title, :all_day
  belongs_to :pharmacy
  validates :pharmacy_id, presence: true
  
  accepts_nested_attributes_for :pharmacy
end
