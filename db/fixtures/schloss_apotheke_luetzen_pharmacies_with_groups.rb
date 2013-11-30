# The last account has ID: 13
Account.unscoped.delete_all(:id => 14)
Account.seed(:id,
  { :id => 14,
    :name => "Schloss Apotheke",
    :subdomain => "schlossapothekeluetzen"
  }
)
puts "Schloss Apotheke Lützen create account completed."

# The last user has ID: 13
User.unscoped.delete_all(:account_id => 14)
User.seed(:id,
  { :id => 14,
    :name => "Peggy",
    :last_name => "Goblirsch",
    :email => ENV['SCHLOSS_APOTHEKE_LUETZEN_EMAIL'],
    :password => ENV['SCHLOSS_APOTHEKE_LUETZEN_PASSWORD'],
    :password_confirmation => ENV['SCHLOSS_APOTHEKE_LUETZEN_PASSWORD'],
    :account_id => 14
  },
  { :id => 15,
    :name => "Admin",
    :email => ENV['GMAIL_USERNAME'],
    :password => ENV['GMAIL_PASSWORD'],
    :password_confirmation => ENV['GMAIL_PASSWORD'],  
    :account_id => 14
  }
)
puts "Schloss Apotheke Lützen create users completed."

# The last group has ID: 6
EmergencyGroup.unscoped.delete_all(:account_id => 14)
EmergencyGroup.seed(:id,
  { :id => 7,
    :account_id => 14, 
    :name => "Gruppe 1",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 8,
    :account_id => 14, 
    :name => "Gruppe 2",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 9,
    :account_id => 14, 
    :name => "Gruppe 3",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 10,
    :account_id => 14, 
    :name => "Gruppe 4",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 11,
    :account_id => 14, 
    :name => "Gruppe 5",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 12,
    :account_id => 14, 
    :name => "Gruppe 6",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 13,
    :account_id => 14, 
    :name => "Gruppe 7",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 14,
    :account_id => 14, 
    :name => "Gruppe 8",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 15,
    :account_id => 14, 
    :name => "Gruppe 9",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 16,
    :account_id => 14, 
    :name => "Gruppe 10",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 17,
    :account_id => 14, 
    :name => "Gruppe 11",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 18,
    :account_id => 14, 
    :name => "Gruppe 12",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 19,
    :account_id => 14, 
    :name => "Gruppe 13",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 20,
    :account_id => 14, 
    :name => "Gruppe 14",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 21,
    :account_id => 14, 
    :name => "Gruppe 15",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 22,
    :account_id => 14, 
    :name => "Gruppe 16",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 23,
    :account_id => 14, 
    :name => "Gruppe 17",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 24,
    :account_id => 14, 
    :name => "Gruppe 18",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" }
)
puts "Schloss Apotheke Lützen create groups completed."

# The last pharmacy has ID: 97
Pharmacy.unscoped.delete_all(:account_id => 14)
Pharmacy.seed(:id,
  ###########  
  # Group 1 #
  ###########  
  { :id => 98,
    :account_id => 14, 
    :emergency_group_id => 7,   
    :name => "Apotheke im Säulenhaus [1]",
    :address => "Weiße Mauer 52",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 2495984",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 99,
    :account_id => 14, 
    :emergency_group_id => 7,   
    :name => "Engel Apotheke [1]",
    :address => "Promenade 15",
    :zipcode => "06231",
    :city => "Bad Dürrenberg",
    :phone_number => "(03462) 80209",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 2 #
  ###########  
  { :id => 100,
    :account_id => 14, 
    :emergency_group_id => 8,   
    :name => "Sonnen Apotheke [2]",
    :address => "Str.d.Friedens 87",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 509267",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 101,
    :account_id => 14, 
    :emergency_group_id => 8,   
    :name => "Bad Apotheke [2]",
    :address => "Markt 8",
    :zipcode => "06246",
    :city => "Bad Lauchstädt",
    :phone_number => "(034635) 339010",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 3 #
  ###########  
  { :id => 102,
    :account_id => 14, 
    :emergency_group_id => 9,   
    :name => "Schloß Apotheke [3]",
    :address => "Hallesche Str. 20",
    :zipcode => "06258",
    :city => "Schkopau",
    :phone_number => "(03461) 721203",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 4 #
  ###########  
  { :id => 103,
    :account_id => 14, 
    :emergency_group_id => 10,   
    :name => "Apotheke im E Center [4]",
    :address => "Kollenbeyer Weg 2",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 823201",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 104,
    :account_id => 14, 
    :emergency_group_id => 11,   
    :name => "Stadt Apotheke [4]",
    :address => "Lützener Platz 16",
    :zipcode => "06231",
    :city => "Bad Dürrenberg",
    :phone_number => "(03462) 87316",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 5 #
  ###########  
  { :id => 105,
    :account_id => 14, 
    :emergency_group_id => 12,   
    :name => "Stern Apotheke [5]",
    :address => "König Heinrich Str. 40",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 211063",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 106,
    :account_id => 14, 
    :emergency_group_id => 12,   
    :name => "Linden Apotheke [5]",
    :address => "Markt 3",
    :zipcode => "06242",
    :city => "Braunsbedra",
    :phone_number => "(034633) 33300",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 6 #
  ###########  
  { :id => 107,
    :account_id => 14, 
    :emergency_group_id => 13,   
    :name => "Stadt Apotheke [6]",
    :address => "Gotthardstr. 22",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 309010",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 7 #
  ###########  
  { :id => 108,
    :account_id => 14, 
    :emergency_group_id => 14,   
    :name => "Süd Apotheke [7]",
    :address => "Str.d.Friedens 29",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 500133",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 8 #
  ###########  
  { :id => 109,
    :account_id => 14,
    :emergency_group_id => 15,   
    :name => "Teich Apotheke [8]",
    :address => "Eisenbahnstr. 1",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 214123",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 110,
    :account_id => 14, 
    :emergency_group_id => 15,   
    :name => "Apotheke Nova Eventis [8]",
    :address => "Saalepark",
    :zipcode => "06254",
    :city => "Günthersdorf",
    :phone_number => "(034638) 66787",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 9 #
  ###########  
  { :id => 111,
    :account_id => 14, 
    :emergency_group_id => 16,   
    :name => "v. Basedow Apotheke [9]",
    :address => "von Harnack str. 15a",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 231523",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 10 #
  ###########  
  { :id => 112,
    :account_id => 14, 
    :emergency_group_id => 17,   
    :name => "Apotheke am Rathaus [10]",
    :address => "Merseburger Str. 90",
    :zipcode => "06237",
    :city => "Leuna",
    :phone_number => "(03461) 825043",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 11 #
  ###########  
  { :id => 113,
    :account_id => 14, 
    :emergency_group_id => 18,   
    :name => "Apotheke am Brühl [11]",
    :address => "Am Brühl 1a",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 204577",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 114,
    :account_id => 14, 
    :emergency_group_id => 19,   
    :name => "Adler Apotheke [11]",
    :address => "E. Thälmann Str. 19",
    :zipcode => "06686",
    :city => "Lützen",
    :phone_number => "(034444) 20388",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 12 #
  ###########  
  { :id => 115,
    :account_id => 14, 
    :emergency_group_id => 20,   
    :name => "Apotheke im Kaufland [12]",
    :address => "Querfurter Str. 16",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 505053",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 13 #
  ###########  
  { :id => 116,
    :account_id => 14, 
    :emergency_group_id => 21,   
    :name => "Domstadt Apotheke [13]",
    :address => "Querfurter Str. 4",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 249888",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 14 #
  ###########  
  { :id => 117,
    :account_id => 14, 
    :emergency_group_id => 22,   
    :name => "König Heinrich Apotheke [14]",
    :address => "Hölle 1",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 205770",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 118,
    :account_id => 14, 
    :emergency_group_id => 22,   
    :name => "Geiseltal Apotheke [14]",
    :address => "Hölle 1",
    :zipcode => "06242",
    :city => "Braunsbedra",
    :phone_number => "(034633) 22577",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 15 #
  ###########  
  { :id => 119,
    :account_id => 14, 
    :emergency_group_id => 23,   
    :name => "Liebig Apotheke [15]",
    :address => "R. Breitscheid Str. 18",
    :zipcode => "06237",
    :city => "Leuna",
    :phone_number => "(03461) 813891",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 16 #
  ###########  
  { :id => 120,
    :account_id => 14, 
    :emergency_group_id => 24,   
    :name => "Raben Apotheke [16]",
    :address => "Öltzschner Str. 61c",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 506770",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 17 #
  ###########  
  { :id => 121,
    :account_id => 14, 
    :emergency_group_id => 25,   
    :name => "Rosental Apotheke [17]",
    :address => "Christianstr. 13",
    :zipcode => "06217",
    :city => "Merseburg",
    :phone_number => "(03461) 231539",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 122,
    :account_id => 14, 
    :emergency_group_id => 25,   
    :name => "Schloß Apotheke [17]",
    :address => "Markt 2",
    :zipcode => "06686",
    :city => "Merseburg",
    :phone_number => "(034444) 23350",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 18 #
  ###########  
  { :id => 123,
    :account_id => 14, 
    :emergency_group_id => 26,   
    :name => "Saline Apotheke [18]",
    :address => "Saline Passage",
    :zipcode => "06231",
    :city => "Bad Dürrenberg",
    :phone_number => "(03462) 82465",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
)
puts "Schloss Apotheke Lützen create pharmacies completed."
