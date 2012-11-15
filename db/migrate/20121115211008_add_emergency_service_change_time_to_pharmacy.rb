class AddEmergencyServiceChangeTimeToPharmacy < ActiveRecord::Migration
  def change
    add_column :pharmacies, :emergency_hour_change_time, :time
  end
end
