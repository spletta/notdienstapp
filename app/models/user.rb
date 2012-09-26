# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  email      :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation
  has_secure_password
  has_many :pharmacies, dependent: :destroy
  #validate :pharmacy_count_within_bounds, :on => :create
  
  before_save { self.email.downcase! }
  before_save :create_remember_token
  
  validates :name, :email, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  private

    #def pharmacy_count_within_bounds
    #  return if pharmacies.blank?
    #  errors.add("Too many pharmacies") if pharmacies.length > 5
    #end
    
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
