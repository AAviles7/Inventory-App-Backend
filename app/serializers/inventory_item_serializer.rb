class InventoryItemSerializer < ActiveModel::Serializer
  attributes :id, :food_item_id, :restaurant_id, :quantity

  belongs_to :restaurant
  belongs_to :food_item
end
