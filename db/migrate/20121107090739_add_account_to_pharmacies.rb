class AddAccountToPharmacies < ActiveRecord::Migration
  def change
    add_column :pharmacies, :account_id, :integer
    add_index :pharmacies, :account_id
  end
end
