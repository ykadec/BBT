class WelcomeController < ApplicationController
  def index
  end
  def search_word
  	 @beers = Beer.all

  end
  def search_catagory 
  	@beers = Beer.all
  end
end
