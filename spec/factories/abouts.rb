# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :about do
  	hero_title "About Us"
  	hero_copy "About the company copy"
  	area1_title "Overview"
  	area1_copy "Company Overview"
  	area2_title "Culture"
  	area2_copy "Fun"
  end
end
