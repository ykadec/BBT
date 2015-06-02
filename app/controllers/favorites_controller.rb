class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all
  end

  def show
    @favorite = Favorite.find(params[:id])
  end

  def new
    @favorite = Favorite.new
  end

  def create
    @favorite = Favorite.new
    @favorite.bar_id = params[:bar_id]
    @favorite.beer_id = params[:beer_id]
    @favorite.user_id = params[:user_id]
    @favorite.notes = params[:notes]
    @favorite.word1 = params[:word1]
    @favorite.word2 = params[:word2]
    @favorite.word3 = params[:word3]
    @favorite.photo = params[:photo]
    @favorite.catagory = params[:catagory]

    if @favorite.save
      redirect_to "/favorites", :notice => "Favorite created successfully."
    else
      render 'new'
    end
  end

  def edit
    @favorite = Favorite.find(params[:id])
  end

  def update
    @favorite = Favorite.find(params[:id])

    @favorite.bar_id = params[:bar_id]
    @favorite.beer_id = params[:beer_id]
    @favorite.user_id = params[:user_id]
    @favorite.notes = params[:notes]
    @favorite.word1 = params[:word1]
    @favorite.word2 = params[:word2]
    @favorite.word3 = params[:word3]
    @favorite.photo = params[:photo]
    @favorite.catagory = params[:catagory]

    if @favorite.save
      redirect_to "/favorites", :notice => "Favorite updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @favorite = Favorite.find(params[:id])

    @favorite.destroy

    redirect_to "/favorites", :notice => "Favorite deleted."
  end
end
