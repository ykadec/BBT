class CreateFavorites < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.integer :bar_id
      t.integer :beer_id
      t.integer :user_id
      t.text :notes
      t.string :word1
      t.string :word2
      t.string :word3
      t.string :photo
      t.string :catagory

      t.timestamps

    end
  end
end
