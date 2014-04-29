class Job < ActiveRecord::Base
	attr_accessible :title, :location, :description, :area1_title, :area1_copy, :area2_title, :area2_copy, :area3_title, :area3_copy, :area4_title, :area4_copy, :area5_title, :area5_copy, :area6_title, :area6_copy, :area7_title, :area7_copy
end
