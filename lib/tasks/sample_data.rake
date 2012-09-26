namespace :db do
  desc "Fill database with sample user data"
  task populate: :environment do
    admin = User.create!(name: "Example User",
                         email: "example@railstutorial.org",
                         password: "foobar",
                         password_confirmation: "foobar")
    admin.toggle!(:admin)

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@railstutorial.org"
      password  = "password"
      User.create!(name: name,
                   email: email,
                   password: password,
                   password_confirmation: password)
    end
    
#    users = User.all(limit: 6)
#    50.times do |n|
#      name = "Test Pharmacy #{n+1}"
#      owner_name = "Test Owner #{n+1}"
#      address = "#{n+1}234 Some Address"
#      phone_number = "123-456-789#{n+1}"
#      fax_number = "123-456-788#{n+1}"
#      users.each { |user| user.pharmacies.create!(name: name, 
#                                                  owner_name: owner_name, 
#                                                  address: address, 
#                                                  phone_number: phone_number,
#                                                  fax_number: fax_number) }
#    end
  end
end