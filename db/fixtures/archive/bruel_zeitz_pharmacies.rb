#start at 13
Account.unscoped.delete_all(:id => 13)
Account.seed(:id,
  { :id => 13,
    :name => "Brühl Apotheke",
    :subdomain => "bruehlapotheke"
  }
)
puts "Loaded Brühl Apotheke Account"

User.unscoped.delete_all(:account_id => 13)
User.seed(:id,
  { :id => 12,
    :name => "Fritz",
    :last_name => "Süß",
    :email => "bruehlapotheke@gmail.com",
    :password => ENV['BRUEL_ZEITZ_PASSWORD'],
    :password_confirmation => ENV['BRUEL_ZEITZ_PASSWORD'],
    :account_id => 13
  },
  { :id => 13,
    :name => "Admin",
    :email => "service@notdienstapp.com",
    :password => ENV['GMAIL_PASSWORD'],
    :password_confirmation => ENV['GMAIL_PASSWORD'],
    :account_id => 13
  }
)
puts "Loaded User"

#start at 144
Pharmacy.unscoped.delete_all(:account_id => 13)
Pharmacy.seed(:id,
  ###########  
  # Group B #
  ########### Brühl Apotheke
  { :id => 158,
    :account_id => 13, 
    :emergency_group_id => 32,   
    :name => "Brühl Apotheke",
    :address => "Brühl 28",
    :zipcode => "06712",
    :city => "Zeitz",
    :phone_number => "(03441) 211435" },
  ###########  
  # Group E #
  ########### Einhorn Apotheke
  { :id => 159,
    :account_id => 13, 
    :emergency_group_id => 33,   
    :name => "Einhorn Apotheke",
    :address => "Röntgenstr. 1",
    :zipcode => "06712",
    :city => "Zeitz",
    :phone_number => "(03441) 766750" },
  ###########  
  # Group F #
  ########### Fontane Apotheke
  { :id => 146,
    :account_id => 13, 
    :emergency_group_id => 34,   
    :name => "Fontane Apotheke",
    :address => "Anna-Magd.-Bach-Str. 6a",
    :zipcode => "06712",
    :city => "Zeitz",
    :phone_number => "(03441) 213316" },
  ###########  
  # Group Fl #
  ########### Floericke Apotheke
  { :id => 147,
    :account_id => 13, 
    :emergency_group_id => 35,   
    :name => "Floericke Apotheke",
    :address => "Dr.-Kurt-floericke-Prom. 22B Straße 5",
    :zipcode => "06712",
    :city => "Zeitz",
    :phone_number => "(03441) 74190" },
  ###########  
  # Group K #
  ########### Katharinen Apotheke
  { :id => 148,
    :account_id => 13, 
    :emergency_group_id => 36,   
    :name => "Katharinen Apotheke",
    :address => "Platz der Dt.Einheit 5",
    :zipcode => "06712",
    :city => "Zeitz",
    :phone_number => "(03441) 310842" },
  ###########  
  # Group M #
  ########### Mohren Apotheke
  { :id => 149,
    :account_id => 13, 
    :emergency_group_id => 37,   
    :name => "Mohren Apotheke",
    :address => "Brüderstr. 20",
    :zipcode => "06712",
    :city => "Zeitz",
    :phone_number => "(03441) 212436" },
  ###########  
  # Group N #
  ########### Nord Apotheke
  { :id => 150,
    :account_id => 13, 
    :emergency_group_id => 38,   
    :name => "Nord Apotheke",
    :address => "Weißenfelser Str. 1",
    :zipcode => "06712",
    :city => "Zeitz",
    :phone_number => "(03441) 212028" },
  ###########  
  # Group P #
  ########### Pluspunkt Apotheke
  { :id => 151,
    :account_id => 13, 
    :emergency_group_id => 39,   
    :name => "Pluspunkt Apotheke",
    :address => "Roßmarkt 13",
    :zipcode => "06712",
    :city => "Zeitz",
    :phone_number => "(03441) 60490" },
  ###########  
  # Group S #
  ########### Schwanen Apotheke
  { :id => 152,
    :account_id => 13, 
    :emergency_group_id => 40,   
    :name => "Schwanen Apotheke",
    :address => "Brüderstr. 4",
    :zipcode => "06712",
    :city => "Zeitz",
    :phone_number => "(03441) 213203" },
  ###########  
  # Group So #
  ########### Sonnen Apotheke
  { :id => 153,
    :account_id => 13, 
    :emergency_group_id => 41,   
    :name => "Sonnen Apotheke",
    :address => "Schützenstr. 2",
    :zipcode => "06712",
    :city => "Zeitz",
    :phone_number => "(03441) 86060" },
  ###########  
  # Group Bn #
  ########### Brunnen Apotheke
  { :id => 154,
    :account_id => 13, 
    :emergency_group_id => 42,   
    :name => "Brunnen Apotheke",
    :address => "Friedenplatz 1",
    :zipcode => "06729",
    :city => "Tröglitz",
    :phone_number => "(03441) 536325" },
  ###########  
  # Group G #
  ########### Globus Apotheke
  { :id => 155,
    :account_id => 13, 
    :emergency_group_id => 43,   
    :name => "Globus Apotheke",
    :address => "Zeitzer Str. 39",
    :zipcode => "06711",
    :city => "Theißen",
    :phone_number => "(03441) 68610" },
  ###########  
  # Group H #
  ########### Hubertus Apotheke
  { :id => 156,
    :account_id => 13, 
    :emergency_group_id => 44,   
    :name => "Hubertus Apotheke",
    :address => "Markt 8",
    :zipcode => "06724",
    :city => "Kayna",
    :phone_number => "(034426) 21314" },
  ###########  
  # Group Sch #
  ########### Schloß Apotheke
  { :id => 157,
    :account_id => 13, 
    :emergency_group_id => 45,   
    :name => "Schloß Apotheke",
    :address => "Markt 6",
    :zipcode => "06722",
    :city => "Droyßig",
    :phone_number => "(034425) 99699" }

)
puts "Pharmacies loaded"

# start at 32
EmergencyGroup.unscoped.delete_all(:account_id => 13)
EmergencyGroup.seed(:id,
  { :id => 32,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "B",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 33,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "E",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 34,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "F",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 35,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "Fl",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 36,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "K",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 37,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "M",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 38,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "N",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 39,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "P",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 40,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "S",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 41,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "So",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 42,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "Bn",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 43,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "G",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 44,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "H",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" },
  { :id => 45,
    :account_id => 13, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "Sch",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" }
)
puts "Emergency Groups loaded"
