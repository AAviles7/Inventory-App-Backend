class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :role, :restaurant_id

  belongs_to :restaurant
  has_many :placed_orders, class_name: 'Order', foreign_key: 'creator_id'
  has_many :received_orders, class_name: 'Order', foreign_key: 'receiver_id'
end
