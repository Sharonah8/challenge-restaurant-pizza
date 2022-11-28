class Restaurantpizza < ApplicationRecord
    belongs_to :restaurant 
    belongs_to :pizza 

    validates :price, presence: true
    validate :price_range

    def price_range
        if (price < 1 || price > 30)
            errors.add(:price, "the price must be between 0 and 30")
        end
    end
end
