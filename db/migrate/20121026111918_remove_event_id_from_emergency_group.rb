class RemoveEventIdFromEmergencyGroup < ActiveRecord::Migration
  def up
    remove_column :emergency_groups, :event_id
  end

  def down
    add_column :emergency_groups, :event_id, :integer
  end
end
