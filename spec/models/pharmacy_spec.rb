require 'spec_helper'

describe Pharmacy do

  let(:user) { FactoryGirl.create(:user) }
  before { @pharmacy = user.pharmacies.build(name: "Test Pharmacy", owner_name: "Test Owner",
                                              address: "1234 Some Address", phone_number: "123-456-7891",
                                              fax_number: "123-456-7802") }

  subject { @pharmacy }

  it { should respond_to(:name) }
  it { should respond_to(:user_id) }
  it { should respond_to(:owner_name) }
  it { should respond_to(:bga_number) }
  it { should respond_to(:address) }
  it { should respond_to(:phone_number) }
  it { should respond_to(:fax_number) }
  it { should respond_to(:email) }
  it { should respond_to(:website_url) }
  it { should respond_to(:start_hours) }
  it { should respond_to(:end_hours) }
  
  it { should respond_to(:user) }
  #its(:user) { should == user }

  it { should be_valid }

#  describe "when user_id is not present" do
#    before { @pharmacy.user_id = nil }
#    it { should_not be_valid }
#  end

   describe "with blank name" do
     before { @pharmacy.name = " " }
     it { should_not be_valid }
   end

   describe "with blank owner name" do
     before { @pharmacy.owner_name = " " }
     it { should_not be_valid }
   end
   
   describe "with blank address" do
     before { @pharmacy.address = " " }
     it { should_not be_valid }
   end
   
   describe "with blank phone number" do
     before { @pharmacy.phone_number = " " }
     it { should_not be_valid }
   end
   
   describe "with blank fax number" do
     before { @pharmacy.fax_number = " " }
     it { should_not be_valid }
   end
   
  describe "accessible attributes" do
    it "should not allow access to user_id" do
      expect do
        Pharmacy.new(user_id: user.id)
      end.to raise_error(ActiveModel::MassAssignmentSecurity::Error)
    end    
  end
end