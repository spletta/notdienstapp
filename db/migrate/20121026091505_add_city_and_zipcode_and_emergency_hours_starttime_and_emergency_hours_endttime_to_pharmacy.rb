class AddCityAndZipcodeAndEmergencyHoursStarttimeAndEmergencyHoursEndttimeToPharmacy < ActiveRecord::Migration
  def change
    add_column :pharmacies, :city, :string
    add_column :pharmacies, :zipcode, :string
    add_column :pharmacies, :emergency_hours_starttime, :time
    add_column :pharmacies, :emergency_hours_endtime, :time
  end
end
