# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
admin = User.create([{:email => 'scott@bloomconsultinggroup.com', :password => 'password', :password_confirmation => 'password'}, {:email => 'jenmjayne@gmail.com', :password => 'password', :password_confirmation => 'password'}])

# if admin.errors.blank?
# 	puts "***User #{admin.email} created"
# else
# 	puts "admin failed to create because:"
# 	admin.errors.each do |x, y|
# 		puts "#{x} #{y}"
# 	end
# end

main = Main.create(:hero_image => "hero image", :hero_title => "Grow cost effectively with Bloom", :stratum_1_image => "stratum image", :stratum_1_title => "Huskies: We're Coming to You", :stratum_1_copy => "Bloom Consulting Group will be visiting the UW campus in Seattle on April 15th to speak with MBA grads. Think you might be intereseted in working for a fast-paced, agile management firm with a focus on business intelligence? Come vist our booth!", :stratum_1_cta => "Learn more about Bloom", :stratum_1_link => "/about", :practice_area_1_image => "pracice area image", :practice_area_1_title => "Project Management", :practice_area_1_copy => "project planning and initiation, establishing a project framework, managing resources and scope, monitoring project quality, measuring performance, and managing risk", :practice_area_1_link => "/pa1", :practice_area_2_image => "practice area 2 image", :practice_area_2_title => "Management Consulting", :practice_area_2_copy => "project planning and initiation, establishing a project framework, managing resources and scope, monitoring project quality, measuring performance, and managing risk", :practice_area_2_link => "/pa2", :practice_area_3_image => "practice area 3 image", :practice_area_3_title => "Business Intelligence", :practice_area_3_copy => "a unique combination of team skills supplemented by diligent project managers who work closely with business", :practice_area_3_link => "/pa3 link", :stratum_2_image => "stratum 2 image", :stratum_2_title => "Interested in joining us?", :stratum_2_copy => "We're always on the lookout for amazing talent and we are currently hiring. If you think you might like to join the Bloom family, get in touch.", :stratum_2_cta => "Browse Open Positions", :stratum_2_link => "/careers")

if main.errors.blank?
	puts "Homepage created"
else
	puts "Homepage failed to create because:"
	admin.errors.each do |x, y|
		puts "#{x} #{y}"
	end
end

pa = Practicearea.create(:hero_image => "hero image", :hero_title => "Practice Areas", :hero_copy => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", :pa1_title => "Project Management", :pa1_copy => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis tellus imperdiet orci vehicula molestie. Etiam malesuada turpis eget odio elementum, sit amet hendrerit justo rutrum. Mauris egestas mi ac risus euismod imperdiet. Phasellus sed odio ligula. Morbi cursus imperdiet augue in adipiscing. Quisque in ipsum semper, semper velit at, consectetur mi. Nam aliquet risus at felis pulvinar, quis sodales mauris ultrices. Nullam varius dictum velit, sed porta elit interdum non. Ut massa leo, imperdiet sit amet luctus sed, volutpat eget est.", :pa2_title => "Management Consulting", :pa2_copy => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis tellus imperdiet orci vehicula molestie. Etiam malesuada turpis eget odio elementum, sit amet hendrerit justo rutrum. Mauris egestas mi ac risus euismod imperdiet. Phasellus sed odio ligula. Morbi cursus imperdiet augue in adipiscing. Quisque in ipsum semper, semper velit at, consectetur mi. Nam aliquet risus at felis pulvinar, quis sodales mauris ultrices. Nullam varius dictum velit, sed porta elit interdum non. Ut massa leo, imperdiet sit amet luctus sed, volutpat eget est.", :pa3_title => "Business Intelligence", :pa3_copy => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis tellus imperdiet orci vehicula molestie. Etiam malesuada turpis eget odio elementum, sit amet hendrerit justo rutrum. Mauris egestas mi ac risus euismod imperdiet. Phasellus sed odio ligula. Morbi cursus imperdiet augue in adipiscing. Quisque in ipsum semper, semper velit at, consectetur mi. Nam aliquet risus at felis pulvinar, quis sodales mauris ultrices. Nullam varius dictum velit, sed porta elit interdum non. Ut massa leo, imperdiet sit amet luctus sed, volutpat eget est.")

if pa.errors.blank?
	puts "Practice areas page created"
else
	puts "Practice areas failed to create because:"
	admin.errors.each do |x, y|
		puts "#{x} #{y}"
	end
end

career = Career.create(:hero_image => "hero image", :hero_title => "Careers", :hero_copy => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", :intro_title => "Open Positions", :intro_copy => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis tellus imperdiet orci vehicula molestie.", :cta_title => "Don't see an open position for you?", :cta_copy => "We're always looking for amazing talent. Get in touch and we'll see what we have!")

if career.errors.blank?
	puts "Careers page created"
else
	puts "Careers failed to create because:"
	admin.errors.each do |x, y|
		puts "#{x} #{y}"
	end
end

team = Team.create(:intro_title => "Meet the Team", :intro_copy => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet consectetur mi at mattis. Cum sociis penatibus et magnis dis parturient montes.")

if team.errors.blank?
	puts "Team page created"
else
	puts "Team failed to create because:"
	admin.errors.each do |x, y|
		puts "#{x} #{y}"
	end
end

about = About.create(:hero_image => "hero image", :hero_title => "About", :hero_copy => "Lorem ipsum dolor sit amet, consectetur adipiscing elit.", :area1_title => "Company Overview", :area1_copy => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis tellus imperdiet orci vehicula molestie.", :area2_title => "Culture", :area2_copy => "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse facilisis tellus imperdiet orci vehicula molestie.", :area3_title => "N/A", :area3_copy => "N/A")

if about.errors.blank?
	puts "About page created"
else
	puts "About page failed to create because:"
	admin.errors.each do |x, y|
		puts "#{x} #{y}"
	end
end
