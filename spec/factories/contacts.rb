# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    address "2270 Leary Way Redmond WA 97052"
    phone "555-555-1234"
    email "test@example.com"
  end
end
