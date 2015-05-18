class Announcement < ActiveRecord::Base
  mount_uploader :announcement_1_image, StratumImageUploader
  mount_uploader :announcement_2_image, StratumImageUploader
end
