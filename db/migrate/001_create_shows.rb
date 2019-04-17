class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      #primary key of :id is created for us!
      t.string :name
      t.string :day
      t.string :network
      t.integer :rating
    end
  end
end
