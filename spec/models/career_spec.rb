require 'spec_helper'

describe Career do
	it "has a valid factory" do
		FactoryGirl.create(:career).should be_valid
	end
	it "is invalid without a hero title" do
		FactoryGirl.build(:career, hero_title: nil).should_not be_valid
	end
	it "is invalid without some hero copy" do
		FactoryGirl.build(:career, hero_copy: nil).should_not be_valid
	end
	it "is invalid without an intro title" do 
		FactoryGirl.build(:career, intro_title: nil).should_not be_valid
	end
	it "is invalid without an event header" do
		FactoryGirl.build(:career, event_header: nil).should_not be_valid
	end
	it "is invalid without a cta title" do
		FactoryGirl.build(:career, cta_title: nil).should_not be_valid
	end
	it "is invalid without some cta copy" do
		FactoryGirl.build(:career, cta_title: nil).should_not be_valid
	end
	
end
