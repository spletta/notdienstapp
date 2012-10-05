class PharmaciesUser < ActiveRecord::Base
  attr_accessible :created_at, :pharmacy_id, :position, :user_id
  belongs_to :pharmacy
  belongs_to :user
end
