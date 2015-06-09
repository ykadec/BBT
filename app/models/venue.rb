class Venue < ActiveRecord::Base
	validates :name, :uniqueness => { :scope => :address }

	validates :name, :presence => true
	has_many :favorites
	has_many :beers,
end
