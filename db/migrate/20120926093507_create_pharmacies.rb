class CreatePharmacies < ActiveRecord::Migration
  def change
    create_table :pharmacies do |t|
      t.string :name
      t.text :address
      t.string :phone_number
      t.string :fax_number
      t.string :email
      t.string :website_url
      t.string :owner_name
      t.time :start_hours
      t.time :end_hours
      t.integer :bga_number
    
      t.timestamps
    end
  end
end
