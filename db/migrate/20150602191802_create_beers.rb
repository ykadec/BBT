class CreateBeers < ActiveRecord::Migration
  def change
    create_table :beers do |t|
      t.text :production_location
      t.string :photo
      t.string :name
      t.string :catagory

      t.timestamps

    end
  end
end
