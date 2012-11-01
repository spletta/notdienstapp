require "spec_helper"

describe AdminMailer do
  describe "new_user_registration" do
    let(:mail) { AdminMailer.new_user_registration }

    it "renders the headers" do
      mail.subject.should eq("New user registration")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
