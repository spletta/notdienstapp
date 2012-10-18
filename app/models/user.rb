class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :pharmacy_ids, :pharmacy_tokens
  has_secure_password
  
  has_many :pharmacies_users
  has_many :pharmacies, :through => :pharmacies_users
  
  accepts_nested_attributes_for :pharmacies
  
  attr_reader :pharmacy_tokens
  
  before_save { self.email.downcase! }
  before_save :create_remember_token
  
  validates :name, :email, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
  
  def pharmacy_tokens=(tokens)
    self.pharmacy_ids = Pharmacy.ids_from_tokens(tokens)
  end

  private
    
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
end
