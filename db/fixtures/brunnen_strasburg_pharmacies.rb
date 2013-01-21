Account.unscoped.delete_all(:id => 3)
Account.seed(:id,
  { :id => 3,
    :name => "Brunnen Apotheke",
    :subdomain => "brunnen-apotheke"
  }
)
puts "Loaded Brunnen Apotheke Account"

User.unscoped.delete_all(:account_id => 3)
User.seed(:id,
  { :id => 7,
    :name => "Inga",
    :last_name => "Splettstößer",
    :email => "info@brunnen-apotheke-strasburg.de",
    :password => ENV['BRUNNEN_PASSWORD'],
    :password_confirmation => ENV['BRUNNEN_PASSWORD'],
    :account_id => 3
  },
  { :id => 8,
    :name => "Admin",
    :email => "service@notdienstapp.com",
    :password => ENV['GMAIL_PASSWORD'],
    :password_confirmation => ENV['GMAIL_PASSWORD'],
    :account_id => 3
  }
)
puts "Loaded User"

puts "Brunnen Apotheke (brunnen-apotheke.notdienstapp.com), Account ID: 3"
puts "Loading Pharmacies, Emergency Groups, and Events for 2013..."

Pharmacy.unscoped.delete_all(:account_id => 3)
Pharmacy.seed(:id,
  ###########  
  # Group 1 #
  ########### Storch Apotheke
  { :id => 87,#48,
    :account_id => 3, 
    :emergency_group_id => 4,   
    :name => "Storch Apotheke",
    :address => "Torgelower Straße 14",
    :zipcode => "17309",
    :city => "Pasewalk",
    :phone_number => "(03973) 214373",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  ###########  
  # Group 2 #
  ########### Eichen Apotheke
  { :id => 88,#40,
    :account_id => 3, 
    :emergency_group_id => 4,   
    :name => "Eichen Apotheke",
    :address => "Stettiner Straße 41",
    :zipcode => "17309",
    :city => "Pasewalk",
    :phone_number => "(03973) 214071",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  ###########  
  # Group 3 #
  ########### Brunnen Apotheke & Randow Apotheke
  { :id => 89,#50
    :account_id => 3, 
    :emergency_group_id => 4,   
    :name => "Brunnen Apotheke",
    :address => "Markt 20 b",
    :zipcode => "17335",
    :city => "Strasburg",
    :phone_number => "(039753) 28280",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 90,#51
    :account_id => 3, 
    :emergency_group_id => 4,   
    :name => "Randow Apotheke",
    :address => "Chausseestraße 80E",
    :zipcode => "17321",
    :city => "Löcknitz",
    :phone_number => "(039754) 20309",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  ###########  
  # Group 4 #
  ########### Kreis Apotheke
  { :id => 91,#52
    :account_id => 3, 
    :emergency_group_id => 4,   
    :name => "Kreis Apotheke",
    :address => "Prenzlauer Straße 5",
    :zipcode => "17309",
    :city => "Pasewalk",
    :phone_number => "(03973) 210405",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  ###########  
  # Group 5 #
  ########### Adler Apotheke & Delphin Apotheke
  { :id => 92,#53
    :account_id => 3, 
    :emergency_group_id => 4,   
    :name => "Adler Apotheke",
    :address => "Ernst-Thälmann-Straße 15",
    :zipcode => "17335",
    :city => "Strasburg",
    :phone_number => "(039753) 20272",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 93,#54
    :account_id => 3, 
    :emergency_group_id => 4,   
    :name => "Delphin Apotheke",
    :address => "Chausseestr. 86a",
    :zipcode => "17321",
    :city => "Löcknitz",
    :phone_number => "(039754) 517861",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  ###########  
  # Group 6 #
  ########### Neue Apotheke am Markt
  { :id => 94,#55
    :account_id => 3, 
    :emergency_group_id => 4,   
    :name => "Neue Apotheke am Markt",
    :address => "Am Markt 1",
    :zipcode => "17309",
    :city => "Pasewalk",
    :phone_number => "(03973) 20800",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" }
)
puts "Pharmacies loaded"

EmergencyGroup.unscoped.delete_all(:account_id => 3)
EmergencyGroup.seed(:id,
  { :id => 4,
    :account_id => 3, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "Notdienst Apotheken Pasewalk, Strasburg, Löcknitz",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" }
)
puts "Emergency Group loaded"
