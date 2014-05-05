# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :carousel do
    image "MyString"
    title "MyString"
    culture false
    overview false
    consulting false
    pm false
    bi false
  end
end
