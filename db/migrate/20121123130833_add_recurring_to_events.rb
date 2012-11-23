class AddRecurringToEvents < ActiveRecord::Migration
  def change
    add_column :events, :recurring, :boolean, :null => false, :default => false
    add_column :events, :recurring_interval, :string
    add_column :events, :recurring_period, :integer
    add_column :events, :recurring_endtime, :datetime
  end
end
