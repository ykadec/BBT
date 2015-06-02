class BeersController < ApplicationController
  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new
    @beer.production_location = params[:production_location]
    @beer.photo = params[:photo]
    @beer.name = params[:name]
    @beer.catagory = params[:catagory]

    if @beer.save
      redirect_to "/beers", :notice => "Beer created successfully."
    else
      render 'new'
    end
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])

    @beer.production_location = params[:production_location]
    @beer.photo = params[:photo]
    @beer.name = params[:name]
    @beer.catagory = params[:catagory]

    if @beer.save
      redirect_to "/beers", :notice => "Beer updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @beer = Beer.find(params[:id])

    @beer.destroy

    redirect_to "/beers", :notice => "Beer deleted."
  end
end
