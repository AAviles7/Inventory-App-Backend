class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.string :role
      t.belongs_to :restaurant, foreign_key: true

      t.timestamps
    end
  end
end
