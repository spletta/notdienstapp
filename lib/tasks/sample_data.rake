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
    
    25.times do |n|
      name = Faker::Company.name
      owner_name = Faker::Name.name
      email = Faker::Internet.email
      website_url = Faker::Internet.domain_name
      bga_number = rand(7 ** 7).to_s.rjust(7,'0')
      address = Faker::Address.street_address
      phone_number = Faker::PhoneNumber.phone_number
      fax_number = Faker::PhoneNumber.phone_number
      Pharmacy.create!(name: name, 
                       owner_name: owner_name,
                       email: email,
                       website_url: website_url,
                       bga_number: bga_number, 
                       address: address, 
                       phone_number: phone_number,
                       fax_number: fax_number)
    end
  end
end