EmergencyGroup.unscoped.delete_all(:account_id => 13)
puts 'Brühl emergency groups destroyed'

Pharmacy.unscoped.delete_all(:account_id => 13)
puts "Brühl pharmacies destroyed"

Event.unscoped.delete_all(:account_id => 13)
puts 'Brühl events destroyed'

User.unscoped.delete_all(:account_id => 13)
puts 'Brühl users destroyed'

Account.unscoped.delete_all(:id => 13)
puts 'Brühl account destroyed'