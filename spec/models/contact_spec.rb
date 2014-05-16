require 'spec_helper'

describe Contact do
	it "has a valid factory" do
		FactoryGirl.create(:contact).should be_valid
	end
	it "is invalid without an address" do
		FactoryGirl.build(:contact, address: nil).should_not be_valid
	end
	it "is invalid without a phone number" do
		FactoryGirl.build(:contact, phone: nil).should_not be_valid
	end
	it "is invalid without an email address" do
		FactoryGirl.build(:contact, email: nil).should_not be_valid
	end
end
