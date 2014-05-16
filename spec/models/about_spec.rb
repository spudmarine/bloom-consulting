require 'spec_helper'

describe About do
	it "has a valid factory" do
		FactoryGirl.create(:about).should be_valid
	end
  it "is invalid without hero title" do
  	FactoryGirl.build(:about, hero_title: nil).should_not be_valid
  end
  it "is invalid without hero copy" do
  	FactoryGirl.build(:about, hero_copy: nil).should_not be_valid
  end
  it "is invalid without area1 title" do
  	FactoryGirl.build(:about, area1_title: nil).should_not be_valid
  end
  it "is invalid without area1 copy" do
  	FactoryGirl.build(:about, area1_copy: nil).should_not be_valid
  end
  it "is invalid without area2 title" do
  	FactoryGirl.build(:about, area2_title: nil).should_not be_valid
  end
  it "is invalid without area2 copy" do
  	FactoryGirl.build(:about, area2_copy: nil).should_not be_valid
  end
end
