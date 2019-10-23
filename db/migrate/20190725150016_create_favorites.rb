class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.integer :user_id
      t.string :item_name
      t.integer :price
      t.string :image_url
      t.string :description
    end
  end
end
