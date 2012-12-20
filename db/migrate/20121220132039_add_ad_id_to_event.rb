class AddAdIdToEvent < ActiveRecord::Migration
  def change
    add_column :events, :ad_id, :integer
  end
end
