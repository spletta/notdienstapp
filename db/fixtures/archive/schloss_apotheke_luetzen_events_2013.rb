Event.unscoped.delete_all(:account_id => 14)

Event.seed(:id, 
  # Group 1
  { 
    :account_id => 14, 
    :pharmacy_id => 198,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '14.12.2013 09:00:00',
    :endtime => '15.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 199,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '14.12.2013 09:00:00',
    :endtime => '15.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 1 Loaded"

Event.seed(:id, 
  # Group 2
  { 
    :account_id => 14, 
    :pharmacy_id => 200,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '15.12.2013 09:00:00',
    :endtime => '16.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 201,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '15.12.2013 09:00:00',
    :endtime => '16.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 2 Loaded"

Event.seed(:id, 
  # Group 3
  { 
    :account_id => 14, 
    :pharmacy_id => 202,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '16.12.2013 09:00:00',
    :endtime => '17.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 3 Loaded"

Event.seed(:id, 
  # Group 4
  { 
    :account_id => 14, 
    :pharmacy_id => 203,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '17.12.2013 09:00:00',
    :endtime => '18.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 204,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '17.12.2013 09:00:00',
    :endtime => '18.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 4 Loaded"

Event.seed(:id, 
  # Group 5
  { 
    :account_id => 14, 
    :pharmacy_id => 205,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '18.12.2013 09:00:00',
    :endtime => '19.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 206,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '18.12.2013 09:00:00',
    :endtime => '19.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 5 Loaded"

Event.seed(:id, 
  # Group 6
  { 
    :account_id => 14, 
    :pharmacy_id => 207,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '01.12.2013 09:00:00',
    :endtime => '02.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 207,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '19.12.2013 09:00:00',
    :endtime => '20.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 6 Loaded"

Event.seed(:id,  
  # Group 7
  { 
    :account_id => 14, 
    :pharmacy_id => 208,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '02.12.2013 09:00:00',
    :endtime => '03.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 208,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '20.12.2013 09:00:00',
    :endtime => '21.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 7 Loaded"

Event.seed(:id, 
  # Group 8
  { 
    :account_id => 14, 
    :pharmacy_id => 209,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '03.12.2013 09:00:00',
    :endtime => '04.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 209,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '21.12.2013 09:00:00',
    :endtime => '22.12.2013 08:59:00',
    :all_day => false },
  # 2nd Pharmacy
  { 
    :account_id => 14, 
    :pharmacy_id => 210,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '03.12.2013 09:00:00',
    :endtime => '04.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 210,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '21.12.2013 09:00:00',
    :endtime => '22.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 8 Loaded"

Event.seed(:id, 
  # Group 9
  { 
    :account_id => 14, 
    :pharmacy_id => 211,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '04.12.2013 09:00:00',
    :endtime => '05.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 211,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '22.12.2013 09:00:00',
    :endtime => '23.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 9 Loaded"

Event.seed(:id, 
  # Group 10
  { 
    :account_id => 14, 
    :pharmacy_id => 212,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '05.12.2013 09:00:00',
    :endtime => '06.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 212,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '23.12.2013 09:00:00',
    :endtime => '24.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 10 Loaded"

Event.seed(:id, 
  # Group 11
  { 
    :account_id => 14, 
    :pharmacy_id => 213,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '06.12.2013 09:00:00',
    :endtime => '07.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 213,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '24.12.2013 09:00:00',
    :endtime => '25.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 214,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '06.12.2013 09:00:00',
    :endtime => '07.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 214,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '24.12.2013 09:00:00',
    :endtime => '25.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 11 Loaded"

Event.seed(:id, 
  # Group 12
  { 
    :account_id => 14, 
    :pharmacy_id => 215,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '07.12.2013 09:00:00',
    :endtime => '08.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 215,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '25.12.2013 09:00:00',
    :endtime => '26.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 12 Loaded"

Event.seed(:id, 
  # Group 13
  { 
    :account_id => 14, 
    :pharmacy_id => 216,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '08.12.2013 09:00:00',
    :endtime => '09.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 216,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '26.12.2013 09:00:00',
    :endtime => '27.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 13 Loaded"

Event.seed(:id, 
  # Group 14
  { 
    :account_id => 14, 
    :pharmacy_id => 217,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '09.12.2013 09:00:00',
    :endtime => '10.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 217,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '27.12.2013 09:00:00',
    :endtime => '28.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 218,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '09.12.2013 09:00:00',
    :endtime => '10.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 218,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '27.12.2013 09:00:00',
    :endtime => '28.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 14 Loaded"

Event.seed(:id, 
  # Group 15
  { 
    :account_id => 14, 
    :pharmacy_id => 219,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '10.12.2013 09:00:00',
    :endtime => '11.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 219,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '28.12.2013 09:00:00',
    :endtime => '29.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 15 Loaded"

Event.seed(:id, 
  # Group 16
  { 
    :account_id => 14, 
    :pharmacy_id => 220,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '11.12.2013 09:00:00',
    :endtime => '12.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 220,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '29.12.2013 09:00:00',
    :endtime => '30.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 16 Loaded"

Event.seed(:id, 
  # Group 17
  { 
    :account_id => 14, 
    :pharmacy_id => 221,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '12.12.2013 09:00:00',
    :endtime => '13.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 221,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '30.12.2013 09:00:00',
    :endtime => '31.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 222,
    :color => "Rot", 
    :event_type => "Notdienst",
    :starttime => '12.12.2013 09:00:00',
    :endtime => '13.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 222,
    :color => "Rot", 
    :event_type => "Notdienst",
    :starttime => '30.12.2013 09:00:00',
    :endtime => '31.12.2013 08:59:00',
    :all_day => false }
)
puts "Group 17 Loaded"

Event.seed(:id, 
  # Group 18
  { 
    :account_id => 14, 
    :pharmacy_id => 223,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '13.12.2013 09:00:00',
    :endtime => '14.12.2013 08:59:00',
    :all_day => false },
  { 
    :account_id => 14, 
    :pharmacy_id => 223,
    :color => "Weiss", 
    :event_type => "Notdienst",
    :starttime => '31.12.2013 09:00:00',
    :endtime => '01.01.2014 08:59:00',
    :all_day => false }
)
puts "Group 18 Loaded"