Event.delete_all
Event.create(:id => 1, :pharmacy_id => 1, :starttime => '2012-11-06 08\:00\:00 +0100', :endtime => '2012-11-07 08\:00\:00 +0100', :all_day=>false)
Event.create(:id => 2, :pharmacy_id => 2, :starttime=>'2012-11-07 08\:00\:00 +0100', :endtime=>'2012-11-08 08\:00\:00 +0100', :all_day=>false)
Event.create(:id => 3, :pharmacy_id => 3, :starttime=>'2012-11-08 08\:00\:00 +0100', :endtime=>'2012-11-09 08\:00\:00 +0100', :all_day=>false)
Event.create(:id => 4, :pharmacy_id => 4, :starttime=>'2012-11-09 08\:00\:00 +0100', :endtime=>'2012-11-10 08\:00\:00 +0100', :all_day=>false)
puts "Success: Theme data loaded"