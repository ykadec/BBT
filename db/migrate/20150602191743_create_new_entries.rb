class CreateNewEntries < ActiveRecord::Migration
  def change
    create_table :new_entries do |t|

      t.timestamps

    end
  end
end
