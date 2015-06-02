class Favorite < ActiveRecord::Base

	belongs_to :venue
	belongs_to :beer

end
