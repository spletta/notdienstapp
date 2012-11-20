class AddTimeToEvents < ActiveRecord::Migration
  def up
    change_column :events, :starttime, :datetime
    change_column :events, :endtime, :datetime
  end

  def down
    change_column :events, :starttime, :date
    change_column :events, :endtime, :date
  end
end
