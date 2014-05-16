require 'spec_helper'

describe Employee do
	it "has a valid factory" do
		FactoryGirl.create(:employee).should be_valid
	end
	it "is invalid without a name" do
		FactoryGirl.build(:employee, name: nil).should_not be_valid
	end
	it "is invalid without a title" do
		FactoryGirl.build(:employee, title: nil).should_not be_valid
	end
	it "is invalid without a bio intro" do
		FactoryGirl.build(:employee, bio_intro: nil).should_not be_valid
	end
	it "is invalid without a bio" do
		FactoryGirl.build(:employee, bio: nil).should_not be_valid
	end
end
