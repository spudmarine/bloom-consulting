# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    employee_image "MyString"
    name "MyString"
    title "MyString"
    bio "MyText"
    linkedin "MyString"
    twitter "MyString"
    facebook "MyString"
  end
end
