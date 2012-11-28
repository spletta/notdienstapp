class RemoveUserIdIndexFromAccount < ActiveRecord::Migration
  def change
    remove_index :accounts, :user_id
  end
end
