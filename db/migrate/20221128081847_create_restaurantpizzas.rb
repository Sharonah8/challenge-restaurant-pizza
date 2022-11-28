class CreateRestaurantpizzas < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurantpizzas do |t|
      t.integer :pizza_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
