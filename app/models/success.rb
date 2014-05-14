class Success < ActiveRecord::Base
	mount_uploader :article, InsightsUploader

	validates :title, :author, :blurb, :article, presence: true
end
