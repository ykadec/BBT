class NewEntriesController < ApplicationController
  def index
    @new_entries = NewEntry.all
  end

  def show
    @new_entry = NewEntry.find(params[:id])
  end

  def new
    @new_entry = NewEntry.new
  end

  def create
    @new_entry = NewEntry.new

    if @new_entry.save
      redirect_to "/new_entries", :notice => "New entry created successfully."
    else
      render 'new'
    end
  end

  def edit
    @new_entry = NewEntry.find(params[:id])
  end

  def update
    @new_entry = NewEntry.find(params[:id])


    if @new_entry.save
      redirect_to "/new_entries", :notice => "New entry updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @new_entry = NewEntry.find(params[:id])

    @new_entry.destroy

    redirect_to "/new_entries", :notice => "New entry deleted."
  end
end
