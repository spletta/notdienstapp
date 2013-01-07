class Account < ActiveRecord::Base
  attr_accessible :name, :subdomain, :users_attributes, :terms
  has_many :users, :inverse_of => :account, :dependent => :destroy
  before_create :downcase_stuff
  #after_create :create_schema
  
  validates_acceptance_of :terms
  
  accepts_nested_attributes_for :users
  
  def self.current_id=(id)
    Thread.current[:account_id] = id
  end

  def self.current_id
    Thread.current[:account_id]
  end

  #def create_schema
  #  connection.execute("create schema account#{id}")
  #  scope_schema do
  #    load Rails.root.join("db/schema.rb")
  #    connection.execute("drop table #{self.class.table_name}")
  #  end
  #end

  #def scope_schema(*paths)
  #  original_search_path = connection.schema_search_path
  #  connection.schema_search_path = ["account#{id}", *paths].join(",")
  #  yield
  #ensure
  #  connection.schema_search_path = original_search_path
  #end

  private
    def downcase_stuff
      self.subdomain.downcase!
    end
end
