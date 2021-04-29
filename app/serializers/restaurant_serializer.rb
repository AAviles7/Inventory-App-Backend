class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :location, :phone_number, :manager

  has_many :users
  has_many :orders
  has_many :inventory_items
end
