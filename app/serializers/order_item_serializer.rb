class OrderItemSerializer < ActiveModel::Serializer
  attributes :id, :order_id, :food_item_id, :quantity

  belongs_to :order
  belongs_to :food_item
end
