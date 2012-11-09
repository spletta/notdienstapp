class Account < ActiveRecord::Base
  attr_accessible :name, :subdomain, :users_attributes
  has_many :users, :inverse_of => :account, :dependent => :destroy
  before_create :downcase_stuff
  
  accepts_nested_attributes_for :users
  
  def self.current_id=(id)
    Thread.current[:account_id] = id
  end

  def self.current_id
    Thread.current[:account_id]
  end



  private
    def downcase_stuff
      self.subdomain.downcase!
     end
end
