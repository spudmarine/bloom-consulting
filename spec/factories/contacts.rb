# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :contact do
    address "MyText"
    phone "MyString"
    email "MyString"
  end
end
