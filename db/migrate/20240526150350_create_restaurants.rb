class CreateRestaurants < ActiveRecord::Migration[7.1]
  def change
    create_table :restaurants do |t|
      t.string :nom
      t.integer :note

      t.timestamps
    end
  end
end
