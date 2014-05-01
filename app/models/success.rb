class Success < ActiveRecord::Base
	attr_accessible :title, :author, :blurb, :article, :businessconsulting, :projectmanagement, :businessintelligence
	mount_uploader :article, InsightsUploader
end
