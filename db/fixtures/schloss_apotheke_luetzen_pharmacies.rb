#start at 14
Account.unscoped.delete_all(:id => 14)
Account.seed(:id,
  { :id => 14,
    :name => "Schloss Apotheke",
    :subdomain => "schlossapothekeluetzen"
  }
)
puts "Schloss Apotheke Lützen create account completed."

User.unscoped.delete_all(:account_id => 14)
User.seed(:id,
  { :id => 1,
    :name => "Peggy",
    :last_name => "Goblirsch",
    :email => ENV['SCHLOSS_APOTHEKE_LUETZEN_EMAIL'],
    :password => ENV['SCHLOSS_APOTHEKE_LUETZEN_PASSWORD'],
    :password_confirmation => ENV['SCHLOSS_APOTHEKE_LUETZEN_PASSWORD'],
    :account_id => 14
  },
  { :id => 2,
    :name => "Admin",
    :email => ENV['GMAIL_USERNAME'],
    :password => ENV['GMAIL_PASSWORD'],
    :password_confirmation => ENV['GMAIL_PASSWORD'],  
    :account_id => 14
  }
)
puts "Schloss Apotheke Lützen create users completed."

EmergencyGroup.unscoped.delete_all(:account_id => 14)
EmergencyGroup.seed(:id,
  { :id => 1,
    :account_id => 14, 
    :name => "Gruppe 1",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 2,
    :account_id => 14, 
    :name => "Gruppe 2",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 3,
    :account_id => 14, 
    :name => "Gruppe 3",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 4,
    :account_id => 14, 
    :name => "Gruppe 4",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 5,
    :account_id => 14, 
    :name => "Gruppe 5",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 6,
    :account_id => 14, 
    :name => "Gruppe 6",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 7,
    :account_id => 14, 
    :name => "Gruppe 7",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 8,
    :account_id => 14, 
    :name => "Gruppe 8",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 9,
    :account_id => 14, 
    :name => "Gruppe 9",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 10,
    :account_id => 14, 
    :name => "Gruppe 10",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 11,
    :account_id => 14, 
    :name => "Gruppe 11",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 12,
    :account_id => 14, 
    :name => "Gruppe 12",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 13,
    :account_id => 14, 
    :name => "Gruppe 13",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 14,
    :account_id => 14, 
    :name => "Gruppe 14",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 15,
    :account_id => 14, 
    :name => "Gruppe 15",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 16,
    :account_id => 14, 
    :name => "Gruppe 16",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 17,
    :account_id => 14, 
    :name => "Gruppe 17",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 18,
    :account_id => 14, 
    :name => "Gruppe 18",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" }
)
puts "Schloss Apotheke Lützen create groups completed."

Pharmacy.unscoped.delete_all(:account_id => 14)
Pharmacy.seed(:id,
  ###########  
  # Group 1 #
  ###########  
  { :id => 1,
    :account_id => 14, 
    :emergency_group_id => 1,   
    :name => "Apotheke im Säulenhaus",
    :address => "Weiße Mauer 52",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 2495984",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 2,
    :account_id => 14, 
    :emergency_group_id => 1,   
    :name => "Engel Apotheke",
    :address => "Promenade 15",
    :zipcode => "06231",
    :city => "Bad Dürrenberg",
    :phone_number => "(03462) 80209",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 2 #
  ###########  
  { :id => 3,
    :account_id => 14, 
    :emergency_group_id => 2,   
    :name => "Sonnen Apotheke",
    :address => "Str.d.Friedens 87",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 509267",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 4,
    :account_id => 14, 
    :emergency_group_id => 2,   
    :name => "Bad Apotheke",
    :address => "Markt 8",
    :zipcode => "06246",
    :city => "Bad Lauchstädt",
    :phone_number => "(034635) 339010",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 3 #
  ###########  
  { :id => 5,
    :account_id => 14, 
    :emergency_group_id => 3,   
    :name => "Schloß Apotheke",
    :address => "Hallesche Str. 20",
    :zipcode => "06258",
    :city => "Schkopau",
    :phone_number => "(03461) 721203",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 4 #
  ###########  
  { :id => 6,
    :account_id => 14, 
    :emergency_group_id => 4,   
    :name => "Apotheke im E Center",
    :address => "Kollenbeyer Weg 2",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 823201",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 7,
    :account_id => 14, 
    :emergency_group_id => 4,   
    :name => "Stadt Apotheke",
    :address => "Lützener Platz 16",
    :zipcode => "06231",
    :city => "Bad Dürrenberg",
    :phone_number => "(03462) 87316",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 5 #
  ###########  
  { :id => 8,
    :account_id => 14, 
    :emergency_group_id => 5,   
    :name => "Stern Apotheke",
    :address => "König Heinrich Str. 40",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 211063",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 9,
    :account_id => 14, 
    :emergency_group_id => 5,   
    :name => "Linden Apotheke",
    :address => "Markt 3",
    :zipcode => "06242",
    :city => "Braunsbedra",
    :phone_number => "(034633) 33300",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 6 #
  ###########  
  { :id => 10,
    :account_id => 14, 
    :emergency_group_id => 6,   
    :name => "Stadt Apotheke",
    :address => "Gotthardstr. 22",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 309010",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 7 #
  ###########  
  { :id => 11,
    :account_id => 14, 
    :emergency_group_id => 7,   
    :name => "Süd Apotheke",
    :address => "Str.d.Friedens 29",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 500133",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 8 #
  ###########  
  { :id => 12,
    :account_id => 14, 
    :emergency_group_id => 8,   
    :name => "Teich Apotheke",
    :address => "Eisenbahnstr. 1",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 214123",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 13,
    :account_id => 14, 
    :emergency_group_id => 8,   
    :name => "Apotheke Nova Eventis",
    :address => "Saalepark",
    :zipcode => "06254",
    :city => "Günthersdorf",
    :phone_number => "(034638) 66787",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 9 #
  ###########  
  { :id => 14,
    :account_id => 14, 
    :emergency_group_id => 9,   
    :name => "v. Basedow Apotheke",
    :address => "von Harnack str. 15a",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 231523",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 10 #
  ###########  
  { :id => 15,
    :account_id => 14, 
    :emergency_group_id => 10,   
    :name => "Apotheke am Rathaus",
    :address => "Merseburger Str. 90",
    :zipcode => "06237",
    :city => "Leuna",
    :phone_number => "(03461) 825043",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 11 #
  ###########  
  { :id => 16,
    :account_id => 14, 
    :emergency_group_id => 11,   
    :name => "Apotheke am Brühl",
    :address => "Am Brühl 1a",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 204577",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 17,
    :account_id => 14, 
    :emergency_group_id => 11,   
    :name => "Adler Apotheke",
    :address => "E. Thälmann Str. 19",
    :zipcode => "06686",
    :city => "Lützen",
    :phone_number => "(034444) 20388",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 12 #
  ###########  
  { :id => 18,
    :account_id => 14, 
    :emergency_group_id => 12,   
    :name => "Apotheke im Kaufland",
    :address => "Querfurter Str. 16",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 505053",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 13 #
  ###########  
  { :id => 19,
    :account_id => 14, 
    :emergency_group_id => 13,   
    :name => "Domstadt Apotheke",
    :address => "Querfurter Str. 4",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 249888",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 14 #
  ###########  
  { :id => 20,
    :account_id => 14, 
    :emergency_group_id => 14,   
    :name => "König Heinrich Apotheke",
    :address => "Hölle 1",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 205770",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 21,
    :account_id => 14, 
    :emergency_group_id => 14,   
    :name => "Geiseltal Apotheke",
    :address => "Hölle 1",
    :zipcode => "06242",
    :city => "Braunsbedra",
    :phone_number => "(034633) 22577",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 15 #
  ###########  
  { :id => 22,
    :account_id => 14, 
    :emergency_group_id => 15,   
    :name => "Liebig Apotheke",
    :address => "R. Breitscheid Str. 18",
    :zipcode => "06237",
    :city => "Leuna",
    :phone_number => "(03461) 813891",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 16 #
  ###########  
  { :id => 23,
    :account_id => 14, 
    :emergency_group_id => 16,   
    :name => "Raben Apotheke",
    :address => "Öltzschner Str. 61c",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 506770",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 17 #
  ###########  
  { :id => 24,
    :account_id => 14, 
    :emergency_group_id => 17,   
    :name => "Rosental Apotheke",
    :address => "Christianstr. 13",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 231539",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 25,
    :account_id => 14, 
    :emergency_group_id => 17,   
    :name => "Schloß Apotheke",
    :address => "Markt 2",
    :zipcode => "06686",
    :city => "Merseburg",
    :phone_number => "(034444) 23350",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 18 #
  ###########  
  { :id => 26,
    :account_id => 14, 
    :emergency_group_id => 18,   
    :name => "Saline Apotheke",
    :address => "Saline Passage",
    :zipcode => "06231",
    :city => "Bad Dürrenberg",
    :phone_number => "(03462) 82465",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
)
puts "Schloss Apotheke Lützen create pharmacies completed."
