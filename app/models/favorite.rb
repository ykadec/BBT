class Favorite < ActiveRecord::Base
	belongs_to :user

	belongs_to :venue
	belongs_to :beer

	mount_uploader :photo, PhotoUploader

end
