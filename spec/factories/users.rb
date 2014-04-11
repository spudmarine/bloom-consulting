FactoryGirl.define do
	factory :user do
		sequence(:email) { |n| "johndoe#{n}@example.com" }
		password 'secret'
		password_confirmation 'secret'
	end
end