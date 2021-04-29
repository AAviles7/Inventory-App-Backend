class FoodItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :store

  has_many :order_items
  has_many :inventory_items
end
