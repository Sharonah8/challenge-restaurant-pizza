# class RestaurantPizzasController < ApplicationController
# end

class RestaurantPizzasController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_method
    
    
    def create
        restaurant_pizzas = Restaurantpizza.create!(restaurant_pizza_params)
        render json: restaurant_pizzas, status: :created 
    end
    
    private
    
    def restaurant_pizza_params
        params.permit(:restaurant_id, :pizza_id, :price)
    end
    
    def unprocessable_entity_method(exception)
        render json: { errors: exception.record.errors}, status: :unprocessable_entity
    end
    end