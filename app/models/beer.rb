class Beer < ActiveRecord::Base
	# validates :name, :uniqueness => { :scope => :address }

	validates :name, :presence => true
	has_many :favorites

	mount_uploader :photo, PhotoUploader

end
