class Event < ActiveRecord::Base
  attr_accessible :pharmacy_id, :starttime, :endtime, :description, :title, :all_day
  belongs_to :pharmacy
  validates :pharmacy_id, presence: true
  
  accepts_nested_attributes_for :pharmacy
  
  default_scope { where(account_id: Account.current_id) }
 
# not sure if this is correct [rs]  
#  def endtime=(endtime)
#    start_date.strftime('%d.%m.%Y HH:mm')
#  end
end
