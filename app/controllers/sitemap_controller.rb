class SitemapController < ApplicationController
   def index
     @mains = Main.all
     @careers = Career.all
     @contacts = Contact.all
     @teams = Team.all
     @successes = Success.all
     @employees = Employee.all
     @events = Event.all
     @jobs = Job.all
     @posts = Post.all
     @practiceareas = Practicearea.all
     @quotes = Quote.all
     
     respond_to do |format|
       format.xml
     end
   end
 end