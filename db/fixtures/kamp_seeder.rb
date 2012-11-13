### Get Account (scope) ###
user = User.unscoped.find_by_email("remi500@freenet.de")
account = Account.unscoped.find_by_user_id(user.id)

EmergencyGroup.unscoped.delete_all
EmergencyGroup.seed(:id,
  { :id => 1,
    :account_id => account.object_id, 
    #:pharmacy_ids => [1, 2],   
    :name => "Notdienst für Pasewalk und Strasburg",
    :website_title => "Notdienst für Heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" }
)
puts "Emergency Group loaded"

Pharmacy.unscoped.delete_all
Pharmacy.seed(:id,
  { :id => 1,
    :account_id => account.object_id, 
    :emergency_group_id => 1,   
    :name => "Neue Apotheke am Markt",   
    :owner_name => "Lutz Splettstößer",
    :bga_number => "1234567",
    :address => "Am Markt 1",
    :zipcode => "17309",
    :city => "Pasewalk",
    :phone_number => "(03973) 280800",
    :fax_number => "(03973) 280801",
    :email => "service@apothekevital.de",
    :website_url => "http://apothekevital.de",
    :start_hours => "2000-01-01 07:00:00 +0100",
    :end_hours => "2000-01-01 18:00:00 +0100",
    :emergency_hours_starttime => "2000-01-01 08:00:00 +0100",
    :emergency_hours_endtime => "2000-01-01 08:00:00 +0100" },
  { :id => 2, 
    :account_id => account.object_id, 
    :emergency_group_id => 1,   
    :name => "Test Apotheke",   
    :owner_name => "Lutz Splettstößer",
    :bga_number => "1234567",
    :address => "Am Markt 1",
    :zipcode => "17309",
    :city => "Pasewalk",
    :phone_number => "(03973) 280800",
    :fax_number => "(03973) 280801",
    :email => "service@apothekevital.de",
    :website_url => "http://apothekevital.de",
    :start_hours => "2000-01-01 07:00:00 +0100",
    :end_hours => "2000-01-01 18:00:00 +0100",
    :emergency_hours_starttime => "2000-01-01 08:00:00 +0100",
    :emergency_hours_endtime => "2000-01-01 08:00:00 +0100" }
)
puts "Pharmacies loaded"

Event.unscoped.delete_all
Event.seed(:id,
  { :id => 1,
    :account_id => account.object_id, 
    :pharmacy_id => 1,   
    :starttime => '2012-11-13 08\:00\:00 +0100',
    :endtime => '2012-11-14 08\:00\:00 +0100',
    :all_day => false },
  { :id => 2, 
    :account_id => account.object_id, 
    :pharmacy_id => 2,   
    :starttime => '2012-11-14 08\:00\:00 +0100',
    :endtime => '2012-11-15 08\:00\:00 +0100',
    :all_day => false },
  { :id => 3, 
    :account_id => account.object_id, 
    :pharmacy_id => 1,   
    :starttime => '2012-11-15 08\:00\:00 +0100',
    :endtime => '2012-11-16 08\:00\:00 +0100',
    :all_day => false },
  { :id => 4, 
    :account_id => account.object_id, 
    :pharmacy_id => 2,   
    :starttime => '2012-11-16 08\:00\:00 +0100',
    :endtime => '2012-11-17 08\:00\:00 +0100',
    :all_day => false },
  { :id => 5, 
    :account_id => account.object_id, 
    :pharmacy_id => 1,   
    :starttime => '2012-11-17 08\:00\:00 +0100',
    :endtime => '2012-11-18 08\:00\:00 +0100',
    :all_day => false }
)
puts "Events loaded"