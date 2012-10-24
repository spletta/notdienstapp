class AddEventIdToEmergencyGroups < ActiveRecord::Migration
  def change
    add_column :emergency_groups, :event_id, :integer
    add_index :emergency_groups, :event_id
  end
end
