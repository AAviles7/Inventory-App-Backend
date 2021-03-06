class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :receiver_id
      t.integer :creator_id
      t.string :date
      t.boolean :received
      t.belongs_to :restaurant, foreign_key: true
      t.integer :sent_restaurant_id

      t.timestamps
    end
    add_index :orders, :receiver_id
    add_index :orders, :creator_id
    add_index :orders, :sent_restaurant_id
  end
end
