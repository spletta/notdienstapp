class CreateEmergencyGroups < ActiveRecord::Migration
  def self.up
    create_table :emergency_groups do |t|
      t.string :name
      t.timestamps
    end
  end

  def self.down
    drop_table :emergency_groups
  end
end
