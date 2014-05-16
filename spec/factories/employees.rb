# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :employee do
    name "Scott Rowland"
    title "Web Admin"
    bio "This is some text"
    bio_intro "this is an intro"
    linkedin "MyString"
    twitter "MyString"
  end
end
