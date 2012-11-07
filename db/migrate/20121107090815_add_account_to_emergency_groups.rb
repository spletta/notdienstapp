class AddAccountToEmergencyGroups < ActiveRecord::Migration
  def change
    add_column :emergency_groups, :account_id, :integer
    add_index :emergency_groups, :account_id
  end
end
