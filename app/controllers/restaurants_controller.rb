class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found


    def index
        restaurant = Restaurant.all 
        render json: restaurant
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant, serializer: IndividualRestaurantSerializer
    end

    def destroy
        restaurant = Restaurant.find(params[:id])
        restaurant.destroy
        render json: restaurant, status: :no_content
    end

    private

    def record_not_found
        render json: { error: "Restaurant not found"}, status: :not_found 
    end
end
