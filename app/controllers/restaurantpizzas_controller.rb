class RestaurantpizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalide, with: :unprocessable_entity_method

private
def unprocessable_entity_method(exception)
    render json: { errors: errors.record.errors}, status: :unprocessable_entity_method
end
end
