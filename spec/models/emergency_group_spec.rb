require File.dirname(__FILE__) + '/../spec_helper'

describe EmergencyGroup do
  it "should be valid" do
    EmergencyGroup.new.should be_valid
  end
end
