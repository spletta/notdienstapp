class AddInfoIdToEvent < ActiveRecord::Migration
  def change
    add_column :events, :info_id, :integer
  end
end
