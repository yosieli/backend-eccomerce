class CreateCarts < ActiveRecord::Migration[5.2]
  def change
      create_table :carts do |t|
        t.integer :user_id
        t.integer :quantity
        t.string :item_name
        t.integer :price
        t.string :image_url
      end
  end
end
