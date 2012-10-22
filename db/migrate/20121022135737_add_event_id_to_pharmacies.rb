class AddEventIdToPharmacies < ActiveRecord::Migration
  def change
    add_column :pharmacies, :event_id, :integer
  end
end
