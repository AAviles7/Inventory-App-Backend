class FoodItem < ApplicationRecord
    has_many :order_items
    has_many :inventory_items
end
