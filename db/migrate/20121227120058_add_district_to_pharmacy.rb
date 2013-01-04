class AddDistrictToPharmacy < ActiveRecord::Migration
  def change
    add_column :pharmacies, :district, :string
  end
end
