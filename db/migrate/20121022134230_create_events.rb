class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.integer :pharmacy_id
      t.date :starttime
      t.date :endtime
      t.text :description
      t.string :title
      t.boolean :all_day
      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
