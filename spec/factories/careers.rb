# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :career do
    hero_title "Careers"
    hero_copy "We help people grow"
    intro_title "You should work here"
    event_header "Upcoming events"
    cta_title "Don't see a job?"
    cta_copy "We're always watching for you!"
  end
end
