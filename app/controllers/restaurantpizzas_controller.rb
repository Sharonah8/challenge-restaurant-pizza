class RestaurantpizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_method


def create
    restaurantpizza = Restaurantpizza.create(restaurantpizza_params)
    render json: restaurantpizza, status: :created 
end

private

def restaurantpizza_params
    params.permit(:restaurant_id, :pizza_id, :price)
end

def unprocessable_entity_method(exception)
    render json: { errors: exception.record.errors}, status: :unprocessable_entity_method
end
end
