# start at 32
EmergencyGroup.unscoped.delete_all(:account_id => 13)
puts 'Brühl emergency groups destroyed'

#start at 144
Pharmacy.unscoped.delete_all(:account_id => 13)
puts "Brühl pharmacies destroyed"

Event.unscoped.delete_all(:account_id => 13)
puts 'Brühl events destroyed'

User.unscoped.delete_all(:account_id => 13)
puts 'Brühl users destroyed'

#start at 13
Account.unscoped.delete_all(:id => 13)
puts 'Brühl account destroyed'