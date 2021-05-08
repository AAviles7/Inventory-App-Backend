class CreateInventoryItems < ActiveRecord::Migration[6.1]
  def change
    create_table :inventory_items do |t|
      t.references :food_item, null: false, foreign_key: true
      t.belongs_to :restaurant, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
