class Favorite < ActiveRecord::Base
	belongs_to :user

	belongs_to :venue, :foreign_key => "bar_id"
	belongs_to :beer

	# mount_uploader :photo, PhotoUploader

end
