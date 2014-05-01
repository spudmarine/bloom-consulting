class Contact < ActiveRecord::Base
	attr_accessible :address, :phone, :email, :twitter, :facebook, :linkedin
end
