class Pharmacy < ActiveRecord::Base
  attr_accessible :address, :bga_number, :email, :end_hours, :fax_number, :name, :owner_name, :phone_number, :start_hours, :website_url
  belongs_to :user
  validates :user_id, presence: true
  
  default_scope order: 'pharmacies.name ASC'
end
