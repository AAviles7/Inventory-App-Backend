class OrderSerializer < ActiveModel::Serializer
  attributes :id, :receiver_id, :creator_id, :date, :received, :restaurant_id

  belongs_to :restaurant
  has_many :order_items
  has_many :food_items, through: :order_items

  belongs_to :creator, class_name: 'User'
  belongs_to :receiver, class_name: 'User'
end
