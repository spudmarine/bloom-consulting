class Insight < ActiveRecord::Base
	attr_accessible :title, :author, :blurb, :article
	mount_uploader :article, InsightsUploader

end
