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

	it "is denied access when not logged in" do 
		visit "/admin"

		current_path.should eq "/login"
		within 'h1' do 
			page.should have_content 'Please Log In'
		end
	end

	describe 'post management' do
		before :each do
			user = FactoryGirl.create(:user)
			sign_in user
		end

		it "adds an post" do
			click_link "Manage Posts"
			current_path.should eq admin_posts_path

			expect{
				click_link 'New Post'
				fill_in 'Title', with: 'this title is here'
				fill_in 'Body', with: 'this body is awesome!'
				click_button 'Create Post'
			}.to change(Post, :count).by(1)

			current_path.should eq admin_posts_path
			page.should have_content 'this title is here'
		end
	end

	describe 'user management' do
		before :each do
			user = FactoryGirl.create(:user)
			sign_in user
		end

		it "adds a user" do
			click_link 'Manage Users'
			current_path.should eq admin_users_path

			expect{
				click_link 'New User'
				fill_in 'Email', with: 'scott@bloomconsultinggroup.com'
				fill_in 'Password', with: 'secret'
				fill_in 'Password confirmation', with: 'secret'
				click_button 'Create User'
			}.to change(User, :count).by(1)

			current_path.should eq admin_users_path
			page.should have_content 'scott@bloomconsultinggroup.com'
		end
	end


end