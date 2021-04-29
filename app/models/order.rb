class Order < ApplicationRecord
    belongs_to :restaurant
    has_many :order_items
    has_many :food_items, through: :order_items

    belongs_to :creator, class_name: 'User'
    belongs_to :receiver, class_name: 'User'
    validates :creator, uniqueness: {scope: :receiver}
end
