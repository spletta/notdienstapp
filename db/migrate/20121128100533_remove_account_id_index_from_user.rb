class RemoveAccountIdIndexFromUser < ActiveRecord::Migration
  def change
    remove_index :users, :account_id
  end
end
