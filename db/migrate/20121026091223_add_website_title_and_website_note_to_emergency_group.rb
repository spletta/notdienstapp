class AddWebsiteTitleAndWebsiteNoteToEmergencyGroup < ActiveRecord::Migration
  def change
    add_column :emergency_groups, :website_title, :string
    add_column :emergency_groups, :website_note, :string
  end
end
