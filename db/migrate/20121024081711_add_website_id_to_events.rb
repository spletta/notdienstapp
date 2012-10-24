class AddWebsiteIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :website_id, :integer
    add_index :events, :website_id
  end
end
