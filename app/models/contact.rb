class Contact < ActiveRecord::Base
	attr_accessible :address, :phone, :email
end
