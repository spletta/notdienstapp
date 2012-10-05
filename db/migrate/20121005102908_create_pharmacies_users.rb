class CreatePharmaciesUsers < ActiveRecord::Migration
  def change
    create_table :pharmacies_users do |t|
      t.integer :pharmacy_id
      t.integer :user_id
      t.integer :position
      t.datetime :created_at

      t.timestamps
    end
  end
end
