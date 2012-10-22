class AddPharmacyIdToEmergencyGroups < ActiveRecord::Migration
  def change
    add_column :emergency_groups, :pharmacy_id, :integer
  end
end
