require 'spec_helper'

describe User do
	it "accesses the dashboard" do
		User.create!(
			:email => 'test@example.com',
			:password => 'password',
			:password_confirmation => 'password'
			)

		visit "/login"
		fill_in 'Email', with: 'test@example.com'
		fill_in 'Password', with: 'password'
		click_button 'Log In'

		current_path.should eq '/admin'
		within 'h1' do
			page.should have_content 'Administration'
		end
		page.should have_content 'Manage Users'
		page.should have_content 'Manage Posts'
		page.should have_content 'Manage Pages'
		page.should have_content 'Manage Jobs'
		page.should have_content 'Manage Employees'
	end
end