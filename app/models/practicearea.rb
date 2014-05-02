class Practicearea < ActiveRecord::Base
	attr_accessible :hero_image, :hero_title, :hero_copy, :pa1_title, :pa1_copy, :pa2_title, :pa2_copy, :pa3_title, :pa3_copy, :marketing_services_title, :marketing_services_copy, :sales_services_title, :sales_services_copy, :channel_services_title, :channel_services_copy, :bi_services_title, :bi_services_copy, :pm_process_groups_title, :pm_process_groups_copy, :pm_knowledge_title, :pm_knowledge_copy, :pm_deliverables_title, :pm_deliverables_copy
	mount_uploader :hero_image, HeroImageUploader

end
