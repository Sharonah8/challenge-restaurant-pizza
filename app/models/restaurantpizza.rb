class Restaurantpizza < ApplicationRecord
    belongs_to :restaurant 
    belongs_to :pizza 

    validates :price, presence: true
    validates :price, :numericality => { greater_than_or_equal_to: 1, less_than_or_equal_to: 30 }
    #validates :price, numericality: { in: 1..30 }

    # def price
    #     if (price > 30 || price < 0)
    #         errors.add(:price, "the price must be between 0 and 30")
    #     end
    # end
end
