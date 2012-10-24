class AddEmergencyGroupIdToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :emergency_group_id, :integer
    add_index :websites, :emergency_group_id
  end
end
