class Restaurant < ApplicationRecord
    has_many :restaurantpizzas, dependent: :destroy
    has_many :pizzas, through: :restaurantpizzas
end
