class AddWebsiteIdToEmergencyGroups < ActiveRecord::Migration
  def change
    add_column :emergency_groups, :website_id, :integer
    add_index :emergency_groups, :website_id
  end
end
