class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :location
      t.integer :ratings
      t.text :reviews
      t.string :image
      t.integer :user_id
    end 
  end
end
