class User < ApplicationRecord
    belongs_to :restaurant
    has_many :placed_orders, class_name: 'Order', foreign_key: 'creator_id'
    has_many :received_orders, class_name: 'Order', foreign_key: 'receiver_id'

    has_secure_password
    validates :username, presence: true
    validates :password, presence: true, length: { is: 4 }
    validates :security_level, numericality: { only_integer: true, less_than_or_equal_to: 3, greater_than: 0}
end