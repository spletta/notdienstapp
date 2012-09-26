require 'spec_helper'

describe Pharmacy do

  let(:user) { FactoryGirl.create(:user) }
  before { @pharmacy = user.pharmacies.build(name: "Test Pharmacy", 
                                             owner_name: "Test Owner",
                                             address: "1234 Some Address", 
                                             phone_number: "123-456-7891",
                                             fax_number: "123-456-7802") }

  subject { @pharmacy }

  it { should respond_to(:name) }
  it { should respond_to(:user_id) }
  
  it { should respond_to(:user) }
  its(:user) { should == user }
  
  it { should be_valid }
  
  describe "when user_id is not present" do
    before { @pharmacy.user_id = nil }
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