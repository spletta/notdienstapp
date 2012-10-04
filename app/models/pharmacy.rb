class Pharmacy < ActiveRecord::Base
  attr_accessible :address, :bga_number, :email, :end_hours, :fax_number, :name, :owner_name, :phone_number, :start_hours, :website_url
  belongs_to :user
  validates :user_id, :address, :bga_number, :name, :owner_name, :phone_number, presence: true
  
  default_scope order: 'pharmacies.name ASC'
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
