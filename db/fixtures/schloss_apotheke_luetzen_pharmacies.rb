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
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" }
)
puts "Schloss Apotheke Lützen create pharmacies completed."
