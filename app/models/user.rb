class User < ApplicationRecord
    belongs_to :restaurant
    has_many :placed_orders, class_name: 'Order', foreign_key: 'creator_id'
    has_many :received_orders, class_name: 'Order', foreign_key: 'receiver_id'

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
    validates :username, presence: true, uniqueness: true
    validates :password, presence: true
end
