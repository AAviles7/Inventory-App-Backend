class Restaurant < ApplicationRecord
    has_many :users
    has_many :orders
    has_many :inventory_items
end
