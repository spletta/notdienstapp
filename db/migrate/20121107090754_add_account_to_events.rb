class AddAccountToEvents < ActiveRecord::Migration
  def change
    add_column :events, :account_id, :integer
    add_index :events, :account_id
  end
end
