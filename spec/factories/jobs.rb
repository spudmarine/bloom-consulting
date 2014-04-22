# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    title "MyString"
    purpose "MyText"
    responsibilities "MyText"
    scope "MyText"
    environmental "MyText"
    education "MyText"
    qualifications "MyText"
  end
end
