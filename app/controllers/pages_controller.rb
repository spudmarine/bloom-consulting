class PagesController < ApplicationController

	def home
		@practiceareas = Practicearea.all
		@employees = Employee.all
    @quotes = Quote.all
    @main = Main.find(1)
    @practicearea = Practicearea.find_by_id(params[:id])
    @announcements = Announcement.all
	end
end
