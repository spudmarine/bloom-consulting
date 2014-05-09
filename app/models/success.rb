class Success < ActiveRecord::Base
	mount_uploader :article, InsightsUploader
end
