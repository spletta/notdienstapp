Account.unscoped.delete_all(:id => 1)
Account.seed(:id,
  { :id => 1,
    :name => "Neue Apotheke",
    :subdomain => "apothekevital"
  }
)
puts "Loaded Neue Apotheke Account"

User.unscoped.delete_all(:account_id => 1)
User.seed(:id,
  { :id => 3,
    :name => "Lutz",
    :last_name => "Splettstößer",
    :email => "service@apothekevital.de",
    :password => ENV['NEUE_APOTHEKE_PASEWALK_PASSWORD'],
    :password_confirmation => ENV['NEUE_APOTHEKE_PASEWALK_PASSWORD'],
    :account_id => 1
  },
  { :id => 4,
    :name => "Admin",
    :email => "service@notdienstapp.com",
    :password => ENV['GMAIL_PASSWORD'],
    :password_confirmation => ENV['GMAIL_PASSWORD'],
    :account_id => 1
  }
)
puts "Loaded User"

puts "Neue Apotheke (apothekevital.notdienstapp.com), Account ID: 1"
puts "Loading Pharmacies, Emergency Groups, and Events for 2013..."

Pharmacy.unscoped.delete_all(:account_id => 1)
Pharmacy.seed(:id,
  ###########  
  # Group 1 #
  ########### Storch Apotheke
  { :id => 47,
    :account_id => 1, 
    :emergency_group_id => 2,   
    :name => "Storch Apotheke",
    :address => "Torgelower Straße 14",
    :zipcode => "17309",
    :city => "Pasewalk",
    :phone_number => "(03973) 214373",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  ###########  
  # Group 2 #
  ########### Eichen Apotheke
  { :id => 40,
    :account_id => 1, 
    :emergency_group_id => 2,   
    :name => "Eichen Apotheke",
    :address => "Stettiner Straße 41",
    :zipcode => "17309",
    :city => "Pasewalk",
    :phone_number => "(03973) 214071",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  ###########  
  # Group 3 #
  ########### Brunnen Apotheke & Randow Apotheke
  { :id => 41,
    :account_id => 1, 
    :emergency_group_id => 2,   
    :name => "Brunnen Apotheke",
    :address => "Markt 20 b",
    :zipcode => "17335",
    :city => "Strasburg",
    :phone_number => "(039753) 28280",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 42,
    :account_id => 1, 
    :emergency_group_id => 2,   
    :name => "Randow Apotheke",
    :address => "Chausseestraße 80E",
    :zipcode => "17321",
    :city => "Löcknitz",
    :phone_number => "(039754) 20309",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  ###########  
  # Group 4 #
  ########### Kreis Apotheke
  { :id => 43,
    :account_id => 1, 
    :emergency_group_id => 2,   
    :name => "Kreis Apotheke",
    :address => "Prenzlauer Straße 5",
    :zipcode => "17309",
    :city => "Pasewalk",
    :phone_number => "(03973) 210405",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  ###########  
  # Group 5 #
  ########### Adler Apotheke & Delphin Apotheke
  { :id => 44,
    :account_id => 1, 
    :emergency_group_id => 2,   
    :name => "Adler Apotheke",
    :address => "Ernst-Thälmann-Straße 15",
    :zipcode => "17335",
    :city => "Strasburg",
    :phone_number => "(039753) 20272",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 45,
    :account_id => 1, 
    :emergency_group_id => 2,   
    :name => "Delphin Apotheke",
    :address => "Chausseestr. 86a",
    :zipcode => "17321",
    :city => "Löcknitz",
    :phone_number => "(039754) 517861",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  ###########  
  # Group 6 #
  ########### Neue Apotheke am Markt
  { :id => 46,
    :account_id => 1, 
    :emergency_group_id => 2,   
    :name => "Neue Apotheke am Markt",
    :address => "Am Markt 1",
    :zipcode => "17309",
    :city => "Pasewalk",
    :phone_number => "(03973) 20800",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" }
)
puts "Pharmacies loaded"

EmergencyGroup.unscoped.delete_all(:account_id => 1)
EmergencyGroup.seed(:id,
  { :id => 2,
    :account_id => 1, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "Notdienst Apotheken Pasewalk, Strasburg, Löcknitz",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" }
)
puts "Emergency Group loaded"
