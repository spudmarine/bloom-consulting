# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :admin_page, :class => 'Admin::Page' do
    name "MyString"
    permalink "MyString"
    content "MyText"
  end
end
