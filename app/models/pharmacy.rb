class Pharmacy < ActiveRecord::Base
  attr_accessible :address, :bga_number, :email, :end_hours, :fax_number, :name, :owner_name, :phone_number, :start_hours, :website_url, :users_attributes, :emergency_group_id, :city, :zipcode, :emergency_hours_starttime, :emergency_hours_endtime
  
  has_many :pharmacies_users
  has_many :users, :through => :pharmacies_users
  belongs_to :emergency_group
  has_many :events, :dependent => :destroy
  accepts_nested_attributes_for :users, :emergency_group, :events
  
  validates :address, :bga_number, :name, :owner_name, :phone_number, presence: true
  
  default_scope order: 'pharmacies.name ASC'
  
  def self.tokens(query)
    pharmacies = where("lower(name) LIKE ? or name LIKE ?", "%#{query}%", "%#{query}%")
    if pharmacies.empty?
      [{id: "<<<#{query}>>>", name: "New: \"#{query}\""}]
    else
      pharmacies
    end
  end

  def self.ids_from_tokens(tokens)
    tokens.gsub!(/<<<(.+?)>>>/) { create!(name: $1).id }
    tokens.split(',')
  end
  
  def self.search(search)
      if search
        where('lower(name) LIKE ? or name LIKE ?', "%#{search}%", "%#{search}%")
      else
        scoped
      end
    end
end
