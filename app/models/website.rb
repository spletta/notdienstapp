class Website < ActiveRecord::Base
  attr_accessible :name, :note, :event_ids

  has_many :events
  accepts_nested_attributes_for :events
end
