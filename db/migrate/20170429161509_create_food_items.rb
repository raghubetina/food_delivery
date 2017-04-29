class CreateFoodItems < ActiveRecord::Migration
  def change
    create_table :food_items do |t|
      t.integer :menu_id
      t.integer :price
      t.string :image

      t.timestamps

    end
  end
end
