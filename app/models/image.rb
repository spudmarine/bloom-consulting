class Image < ActiveRecord::Base
  has_attached_file :file,
  								:storage => :s3,
  								:url =>':s3_domain_url',
                  :s3_credentials => {:bucket => 'bcg-site-assets',
                  										:access_key_id => 'AKIAJC4EFI7Y6YYTBQQA',
                                      :secret_access_key => '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'},

                  :path => "posts/:id/:filename"
  do_not_validate_attachment_file_type :file
  belongs_to :post

end
