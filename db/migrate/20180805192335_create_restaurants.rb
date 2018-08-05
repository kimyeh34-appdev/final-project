class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.integer :user_id
      t.integer :bus_id

      t.timestamps
    end
  end
end
