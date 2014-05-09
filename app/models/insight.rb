class Insight < ActiveRecord::Base
	mount_uploader :article, InsightsUploader

end
