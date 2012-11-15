class RemoveEmergencyHoursStarttimeAndEmergencyHoursEndtimeFromPharmacy < ActiveRecord::Migration
  def up
    remove_column :pharmacies, :emergency_hours_endtime
    remove_column :pharmacies, :emergency_hours_starttime
  end

  def down
    add_column :pharmacies, :emergency_hours_starttime, :time
    add_column :pharmacies, :emergency_hours_endtime, :time
  end
end
