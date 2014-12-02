class ApportalController < ApplicationController

	def index
		@main = Main.find(params[:id])
	end

end
