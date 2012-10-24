class AddEmergencyGroupIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :emergency_group_id, :integer
    add_index :events, :emergency_group_id
  end
end
