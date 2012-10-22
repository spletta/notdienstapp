class AddEmergencyGroupIdToPharmacies < ActiveRecord::Migration
  def change
    add_column :pharmacies, :emergency_group_id, :integer
  end
end
