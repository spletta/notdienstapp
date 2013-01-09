### Get Account (scope) ###
#user = User.unscoped.find_by_email("remi500@freenet.de")
#account = Account.unscoped.find_by_user_id(user.id)

Account.unscoped.delete_all(:id => 2)
Account.seed(:id,
  { :id => 2,
    :name => "Muster Apotheke",
    :subdomain => "muster-apotheke"
  }
)
puts "Loaded Muster Account"

User.unscoped.delete_all(:account_id => 2)
User.seed(:id,
  { :id => 5,
    :name => "Max Muster",
    :email => "max@muster.de",
    :password => 'muster',#ENV['WEITLING_PASSWORD'],
    :password_confirmation => 'muster',#ENV['WEITLING_PASSWORD'],
    :account_id => 2
  },
  { :id => 6,
    :name => "Admin",
    :email => "service@notdienstapp.com",
    :password => ENV['GMAIL_PASSWORD'],
    :password_confirmation => ENV['GMAIL_PASSWORD'],
    :account_id => 2
  }
)
puts "Loaded Users for Muster Account"

puts "Muster Apotheke (muster-apotheke.notdienstapp.com), Account ID: 2"
puts "Loading Pharmacies, Emergency Groups, and Events for 2013..."

Pharmacy.unscoped.delete_all(:account_id => 2)
Pharmacy.seed(:id,
  ###########  
  # Group 1 #
  ###########  
  { :id => 86,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Einbecker Apotheke",
    :address => "Einbecker Str. 37",
    :zipcode => "10317",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 52279760",
    :fax_number => "(030) 52279761",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 48,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Dolgensee Apotheke",
    :address => "Dolgenseestr. 11A",
    :zipcode => "10319",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5102323",
    :fax_number => "(030) 51062743",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 2 #
  ###########
  { :id => 49,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Nibelungen Apotheke",
    :address => "Gotlindestr. 49",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5509195",
    :fax_number => "(030) 5509196",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 3 #
  ###########
  { :id => 50,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Magdalenen Apotheke",
    :address => "Frankfurter Allee 191",
    :zipcode => "10315",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5588751",
    :fax_number => "(030) 55488860",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 51,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Sonnenschein-Apotheke",
    :address => "Treskowallee 128",
    :zipcode => "10318",
    :district => "Karlshorst",
    :city => "Berlin",
    :phone_number => "(030) 50378600",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 4 #
  ###########
  { :id => 52,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Apotheke am Tierpark",
    :address => "Rummelsburger Str. 13",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5138203",
    :fax_number => "(030) 51591623",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 5 #
  ###########
  { :id => 53,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Apotheke im Ringcenter II",
    :address => "Frankfurter Allee 113",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 4226470",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 6 #
  ###########
  { :id => 54,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Rusche Apotheke",
    :address => "Ruschestr. 103",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5589462",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 7 #
  ###########
  { :id => 55,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Elsen Apotheke",
    :address => "Weitlingstr. 73",
    :zipcode => "10317",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 53699193",
    :fax_number => "(030) 53699194",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 8 #
  ###########
  { :id => 56,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Karlshorster Apotheke",
    :address => "Dönhoffstr. 2",
    :zipcode => "10318",
    :district => "Karlshorst",
    :city => "Berlin",
    :phone_number => "(030) 50898250",
    :fax_number => "(030) 50898251",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 57,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Bahnhof Apotheke Friedrichsfelde-Ost",
    :address => "Seddiner Straße 22",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 51589995",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 9 #
  ###########
  { :id => 58,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Apotheke am Fennpfuhl",
    :address => "Franz-Jacob-Str. 10",
    :zipcode => "10369",
    :district => "Fennpfuhl",
    :city => "Berlin",
    :phone_number => "(030) 97105429",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 10 #
  ###########
  { :id => 59,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Marksburg Apotheke",
    :address => "Marksburgstr. 37",
    :zipcode => "10318",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5099644",
    :fax_number => "(030) 5087975",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 60,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Apotheke am Anton-Saefkow-Platz",
    :address => "Anton-Saefkow-Platz 8",
    :zipcode => "10369",
    :district => "Fennpfuhl",
    :city => "Berlin",
    :phone_number => "(030) 98195444",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 11 #
  ###########
  { :id => 61,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Friedrichsberg Apotheke",
    :address => "Mauritiuskirchstr. 3",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 55397336",
    :fax_number => "(030) 55397338",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 12 #
  ###########
  { :id => 62,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Adler Apotheke",
    :address => "Geusenstr. 2",
    :zipcode => "10317",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5536041",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 63,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Apotheke am Stadtpark",
    :address => "Möllendorffstraße 88-89",
    :zipcode => "10367",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5592832",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 64,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Oskar Ziethen Apotheke",
    :address => "Frankfurter Allee 231 A",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5779886",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 13 #
  ###########
  { :id => 65,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Muster Apotheke",
    :address => "Weitlingstr. 58",
    :zipcode => "10317",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 52279730",
    :fax_number => "(030) 52279732",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 66,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Bären-Apotheke im Storkower Bogen",
    :address => "Storkower Straße 207",
    :zipcode => "10369",
    :district => "Fennpfuhl",
    :city => "Berlin",
    :phone_number => "(030) 971809 ext. 11",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 14 #
  ###########
  { :id => 67,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Apotheke in der Volkradstrasse",
    :address => "Volkradstr. 32",
    :zipcode => "10319",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5125132",
    :fax_number => "(030) 51009946",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 68,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Castello-Apotheke",
    :address => "Landsberger Allee 171",
    :zipcode => "10369",
    :district => "Fennpfuhl",
    :city => "Berlin",
    :phone_number => "(030) 97603331",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 15 #
  ###########
  { :id => 69,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Rosen Apotheke",
    :address => "Rudolf-Seiffert-Str. 11",
    :zipcode => "10369",
    :district => "Fennpfuhl",
    :city => "Berlin",
    :phone_number => "(030) 9759449",
    :fax_number => "(030) 9759279",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 70,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Rheinstein-Apotheke",
    :address => "Rheinsteinstr. 4",
    :zipcode => "10369",
    :district => "Karlshorst",
    :city => "Berlin",
    :phone_number => "(030) 50159099",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 16 #
  ###########
  { :id => 71,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Beethoven Apotheke",
    :address => "Gensinger Str. 83",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 51097270",
    :fax_number => "(030) 51097271",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 17 #
  ###########
  { :id => 72,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "APONEO Apotheke",
    :address => "Frankfurter Allee 241",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 98694441",
    :fax_number => "(030) 98694442",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 18 #
  ###########
  { :id => 73,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Jumbo Apotheke",
    :address => "Otto-Schmirgal-Str. 3",
    :zipcode => "10319",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 51597722",
    :fax_number => "(030) 51597723",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 74,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Apotheke an der Rhinstraße",
    :address => "Rhinstr. 17",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 27491804",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 19 #
  ###########
  { :id => 75,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Berliner Bär Apotheke",
    :address => "Zachertstr. 75",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5252926",
    :fax_number => "(030) 5253982",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 20 #
  ###########
  { :id => 76,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Möllendorff Apotheke",
    :address => "Möllendorffstr. 47",
    :zipcode => "10367",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 55487020",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 21 #
  ###########
  { :id => 77,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Treskow Apotheke",
    :address => "Ehrenfelsstr. 46",
    :zipcode => "10318",
    :district => "Karlshorst",
    :city => "Berlin",
    :phone_number => "(030) 50012614",
    :fax_number => "(030) 50012615",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 22 #
  ###########
  { :id => 78,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Pharmland Apotheke",
    :address => "Sewanstr. 4",
    :zipcode => "10319",
    :district => "Rummelsburg",
    :city => "Berlin",
    :phone_number => "(030) 67302370",
    :fax_number => "(030) 67302371",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 79,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Delphin Apotheke",
    :address => "Bernhard-Bästlein-Str. 3",
    :zipcode => "10367",
    :district => "Feenpfuhl",
    :city => "Berlin",
    :phone_number => "(030) 97104101",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 23 #
  ###########
  { :id => 80,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Apotheke am Bärenschaufenster",
    :address => "Erich-Kurz-Str. 11",
    :zipcode => "10319",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5129106",
    :fax_number => "(030) 51009435",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 24 #
  ###########
  { :id => 81,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Apotheke 24",
    :address => "Alfred-Kowalke-Str. 1",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 51061424",
    :fax_number => "(030) 51061425",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 25 #
  ###########
  { :id => 82,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Siegfried Apotheke",
    :address => "Siegfriedstr. 9",
    :zipcode => "10315",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5588844",
    :fax_number => "(030) 5536877",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 26 #
  ###########
  { :id => 83,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Central Apotheke",
    :address => "Alt-Friedrichsfelde 90-91",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5251461",
    :fax_number => "(030) 53010076",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  { :id => 84,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Landsberger Apotheke",
    :address => "Landsberger Allee 131 A",
    :zipcode => "10369",
    :district => "Fennpfuhl",
    :city => "Berlin",
    :phone_number => "(030) 97106847",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" },
  ###########  
  # Group 27 #
  ###########
  { :id => 85,
    :account_id => 2, 
    :emergency_group_id => 3,   
    :name => "Pegasus Apotheke",
    :address => "Möllendorffstr. 58",
    :zipcode => "10367",
    :district => "Fennpfuhl",
    :city => "Berlin",
    :phone_number => "(030) 9710820",
    :fax_number => "(030) 97108244",
    :emergency_hour_change_time => "2000-01-01 09:00:00 +0100" }
)
puts "Pharmacies loaded"

EmergencyGroup.unscoped.delete_all(:account_id => 2)
EmergencyGroup.seed(:id,
  { :id => 3,
    :account_id => 2, 
    #:pharmacy_ids => [1 .. 39],   
    :name => "Notdienst Apotheken Muster",
    :website_title => "Notdienst für heute",
    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" }
)
puts "Emergency Group loaded"
