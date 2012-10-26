class RemoveTitleAndDescriptionAndEmergencyGroupIdFromEvent < ActiveRecord::Migration
  def up
    remove_column :events, :title
    remove_column :events, :description
    remove_column :events, :emergency_group_id
  end

  def down
    add_column :events, :emergency_group_id, :integer
    add_column :events, :description, :text
    add_column :events, :title, :string
  end
end
