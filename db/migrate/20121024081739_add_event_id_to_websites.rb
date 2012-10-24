class AddEventIdToWebsites < ActiveRecord::Migration
  def change
    add_column :websites, :event_id, :integer
    add_index :websites, :event_id
  end
end
