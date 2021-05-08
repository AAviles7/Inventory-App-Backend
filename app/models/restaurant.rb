class Restaurant < ApplicationRecord
    has_many :users
    has_many :orders
    has_many :sent_orders, class_name: 'Order', foreign_key: 'sent_restaurant_id'
    has_many :inventory_items

end
