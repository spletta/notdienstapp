### Get Account (scope) ###
#user = User.unscoped.find_by_email("remi500@freenet.de")
#account = Account.unscoped.find_by_user_id(user.id)
Account.delete_all
Account.seed(:id,
  { :id => 1,
    :name => "Test Company",
    :subdomain => "test"
  }
)
puts "Account loaded"

User.unscoped.delete_all
User.seed(:id,
  { :id => 1,
    :name => "Max Muster",
    :email => "remi500@freenet.de",
    :password => "pasewalk",
    :password_confirmation => "pasewalk",
    :account_id => 1
  },
  { :id => 2,
    :name => "Mr Admin",
    :email => "service@notdienstapp.com",
    :password => "pasewalk",
    :password_confirmation => "pasewalk",
    :account_id => 1
  }
)
puts "User loaded"

EmergencyGroup.unscoped.delete_all
EmergencyGroup.seed(:id,
  { :id => 1,
    :account_id => 1, 
    #:pharmacy_ids => [1, 2],   
    :name => "Notdienst für Pasewalk und Strasburg",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" }
)
puts "Emergency Group loaded"

Pharmacy.unscoped.delete_all
Pharmacy.seed(:id,
  { :id => 1,
    :account_id => 1, 
    :emergency_group_id => 1,   
    :name => "Muster Apotheke",   
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
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 2, 
    :account_id => 1, 
    :emergency_group_id => 1,   
    :name => "Nachbar Apotheke",   
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
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 3, 
    :account_id => 1, 
    :emergency_group_id => 1,   
    :name => "Ecke Apotheke",   
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
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 4, 
    :account_id => 1, 
    :emergency_group_id => 1,   
    :name => "Straße Apotheke",   
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
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 5, 
    :account_id => 1, 
    :emergency_group_id => 1,   
    :name => "Curve Apotheke",   
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
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" }
)
puts "Pharmacies loaded"

Event.unscoped.delete_all
Event.seed(:id,
  { :id => 1,
    :account_id => 1, 
    :pharmacy_id => 1,
    :color => "Gruen",  
    :starttime => '28.11.2012 08:00:00 +0100',
    :endtime => '29.11.2012 08:00:00 +0100',
    :all_day => false }
)
puts "Events loaded"