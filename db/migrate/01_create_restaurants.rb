class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :location
      t.string :phone_number
      t.string :manager

      t.timestamps
    end
  end
end
