EmergencyGroup.unscoped.delete_all(:account_id => 11)
puts 'Revier Apotheke emergency groups destroyed'

Pharmacy.unscoped.delete_all(:account_id => 11)
puts "Revier Apotheke pharmacies destroyed"

Event.unscoped.delete_all(:account_id => 11)
puts 'Revier Apotheke events destroyed'

User.unscoped.delete_all(:account_id => 11)
puts 'Revier Apotheke users destroyed'

Account.unscoped.delete_all(:id => 11)
puts 'Revier Apotheke account destroyed'