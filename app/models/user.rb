class User < ActiveRecord::Base
  attr_accessible :email, :name, :password, :password_confirmation, :pharmacy_ids, :pharmacy_tokens
  has_secure_password
  
  has_many :pharmacies_users
  has_many :pharmacies, :through => :pharmacies_users
  belongs_to :account, :inverse_of => :users
  #before_create { generate_token(:auth_token) }
  
  accepts_nested_attributes_for :pharmacies, :account
  
  attr_reader :pharmacy_tokens
  
  default_scope { where(account_id: Account.current_id) }
  
  before_save { self.email.downcase! }
  before_save :create_remember_token
  
  validates :name, :email, presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, 
                    format: { with: VALID_EMAIL_REGEX }, 
                    uniqueness: { scope: :account_id, case_sensitive: false }
                    
  validates :password, 
          # you only need presence on create
          :presence => { :on => :create },
          # allow_nil for length (presence will handle it on create)
          :length   => { :minimum => 6, :allow_nil => true }

      
  validates :password_confirmation, :presence => { :on => :create }

  validates :account, :presence => true

  def send_password_reset
    generate_token(:password_reset_token)
    self.password_reset_sent_at = Time.zone.now
    save!
    @account = Account.find_by_id(Account.current_id)
    if @account != nil
      UserMailer.password_reset(self, @account).deliver
    else
      flash.now[:error] = 'Account was not found'
    end
  end

  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end  
    
  def pharmacy_tokens=(tokens)
    self.pharmacy_ids = Pharmacy.ids_from_tokens(tokens)
  end

  private
    
    def create_remember_token
      self.remember_token = SecureRandom.urlsafe_base64
    end
  
end
