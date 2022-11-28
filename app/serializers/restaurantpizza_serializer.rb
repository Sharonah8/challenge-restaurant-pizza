class RestaurantpizzaSerializer < ActiveModel::Serializer
  #attributes :id, :price, :pizza 

  has_one :pizza
end
