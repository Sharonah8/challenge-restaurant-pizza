class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
    def index
        render json: Restaurant.all
    end

    def show
        restaurant = Restaurant.find(params[:id])
        render json: restaurant
    end

    private

    def record_not_found
        render json: { error: "Restaurant not found"}, status: :not_found 
    end
end
