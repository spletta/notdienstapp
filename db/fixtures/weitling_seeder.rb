### Get Account (scope) ###
#user = User.unscoped.find_by_email("remi500@freenet.de")
#account = Account.unscoped.find_by_user_id(user.id)

Account.delete_all
Account.seed(:id,
  { :id => 9,
    :name => "Weitling Apotheke",
    :subdomain => "weitling-apotheke"
  }
)
puts "Loaded Weitling Account for development machine only"

User.unscoped.delete_all
User.seed(:id,
  { :id => 1,
    :name => "Wolfgang Steyer",
    :email => "weitling.apotheke@gmail.com",
    :password => "pasewalk",
    :password_confirmation => "pasewalk",
    :account_id => 9
  }
)
puts "Loaded User for development"

puts "Weitling Apotheke (weitling-apotheke.notdienstapp.com), Account ID: 9"
puts "Loading Pharmacies, Emergency Groups, and Events for 2013..."

Pharmacy.unscoped.delete_all
Pharmacy.seed(:id,
  { :id => 1,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Einbecker Apotheke",
    :address => "Einbecker Str. 37",
    :zipcode => "10317",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 52279760",
    :fax_number => "(030) 52279761",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 2,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Elsen Apotheke",
    :address => "Weitlingstr. 73",
    :zipcode => "10317",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 53699193",
    :fax_number => "(030) 53699194",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 3,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Marksburg Apotheke",
    :address => "Marksburgstr. 37",
    :zipcode => "10318",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5099644",
    :fax_number => "(030) 5087975",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 4,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Friedrichsberg Apotheke",
    :address => "Mauritiuskirchstr. 3",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 55397336",
    :fax_number => "(030) 55397338",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 5,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Adler Apotheke",
    :address => "Geusenstr. 2",
    :zipcode => "10317",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5536041",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 6,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Weitling Apotheke",
    :address => "Weitlingstr. 58",
    :zipcode => "10317",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 52279730",
    :fax_number => "(030) 52279732",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 7,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Apotheke in der Volkradstrasse",
    :address => "Volkradstr. 32",
    :zipcode => "10319",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5125132",
    :fax_number => "(030) 51009946",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 8,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Rosen Apotheke",
    :address => "Rudolf-Seiffert-Str. 11",
    :zipcode => "10369",
    :district => "Fennpfuhl",
    :city => "Berlin",
    :phone_number => "(030) 9759449",
    :fax_number => "(030) 9759279",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 9,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Beethoven Apotheke",
    :address => "Gensinger Str. 83",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 51097270",
    :fax_number => "(030) 51097271",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 10,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "APONEO Apotheke",
    :address => "Frankfurter Allee 241",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 98694441",
    :fax_number => "(030) 98694442",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 11,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Jumbo Apotheke",
    :address => "Otto-Schmirgal-Str. 3",
    :zipcode => "10319",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 51597722",
    :fax_number => "(030) 51597723",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 12,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Berliner Bär Apotheke",
    :address => "Zachertstr. 75",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5252926",
    :fax_number => "(030) 5253982",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 13,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Nibelungen Apotheke",
    :address => "Gotlindestr. 49",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5509195",
    :fax_number => "(030) 5509196",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 14,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Möllendorff Apotheke",
    :address => "Möllendorffstr. 47",
    :zipcode => "10367",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 55487020",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 15,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Treskow Apotheke",
    :address => "Ehrenfelsstr. 46",
    :zipcode => "10318",
    :district => "Karlshorst",
    :city => "Berlin",
    :phone_number => "(030) 50012614",
    :fax_number => "(030) 50012615",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 16,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Pharmland Apotheke",
    :address => "Sewanstr. 4",
    :zipcode => "10319",
    :district => "Rummelsburg",
    :city => "Berlin",
    :phone_number => "(030) 67302370",
    :fax_number => "(030) 67302371",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 17,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Apotheke am Bärenschaufenster",
    :address => "Erich-Kurz-Str. 11",
    :zipcode => "10319",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5129106",
    :fax_number => "(030) 51009435",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 18,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Apotheke 24",
    :address => "Alfred-Kowalke-Str. 1",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 51061424",
    :fax_number => "(030) 51061425",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 19,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Siegfried Apotheke",
    :address => "Siegfriedstr. 9",
    :zipcode => "10315",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5588844",
    :fax_number => "(030) 5536877",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 20,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Central Apotheke",
    :address => "Alt-Friedrichsfelde 90-91",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5251461",
    :fax_number => "(030) 53010076",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 21,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Pegasus Apotheke",
    :address => "Möllendorffstr. 58",
    :zipcode => "10367",
    :district => "Fennpfuhl",
    :city => "Berlin",
    :phone_number => "(030) 9710820",
    :fax_number => "(030) 97108244",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 22,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Magdalenen Apotheke",
    :address => "Frankfurter Allee 191",
    :zipcode => "10315",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5588751",
    :fax_number => "(030) 55488860",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 23,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Apotheke am Tierpark",
    :address => "Rummelsburger Str. 13",
    :zipcode => "10315",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5138203",
    :fax_number => "(030) 51591623",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 24,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Apotheke im Ringcenter II",
    :address => "Frankfurter Allee 113",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 4226470",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 25,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Rusche Apotheke",
    :address => "Ruschestr. 103",
    :zipcode => "10365",
    :district => "Lichtenberg",
    :city => "Berlin",
    :phone_number => "(030) 5589462",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 26,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Karlshorster Apotheke",
    :address => "Dönhoffstr. 2",
    :zipcode => "10318",
    :district => "Karlshorst",
    :city => "Berlin",
    :phone_number => "(030) 50898250",
    :fax_number => "(030) 50898251",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
  { :id => 27,
    :account_id => 9, 
    :emergency_group_id => 1,   
    :name => "Dolgensee Apotheke",
    :address => "Dolgenseestr. 11A",
    :zipcode => "10319",
    :district => "Friedrichsfelde",
    :city => "Berlin",
    :phone_number => "(030) 5102323",
    :fax_number => "(030) 51062743",
    :emergency_hour_change_time => "2000-01-01 08:00:00 +0100" },
)
puts "Pharmacies loaded"

#EmergencyGroup.unscoped.delete_all
#EmergencyGroup.seed(:id,
#  { :id => 1,
#    :account_id => 9, 
#    :pharmacy_ids => [1 .. 27],   
#    :name => "Notdienst Apotheken Lichtenberg",
#    :website_title => "Notdienst Apotheken Lichtenberg",
#    :website_note => "Notdienstgebühr außerhalb der gesetzlichen Öffnungszeiten 2,50 €" }
#)
#puts "Emergency Group loaded"

#Event.unscoped.delete_all
#Event.seed(:id,
#  { :id => 1,
#    :account_id => 1, 
#    :pharmacy_id => 1,
#    :color => "Gruen",  
#    :starttime => '28.11.2012 08:00:00 +0100',
#    :endtime => '29.11.2012 08:00:00 +0100',
#    :all_day => false }
#)
#puts "Events loaded"