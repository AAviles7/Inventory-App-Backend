class InventoryItem < ApplicationRecord
    belongs_to :restaurant
    belongs_to :food_item
end
