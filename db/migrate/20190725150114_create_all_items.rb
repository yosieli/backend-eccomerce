class CreateAllItems < ActiveRecord::Migration[5.2]
  def change
    create_table :all_items do |t|
      t.string :item_name
      t.integer :price
      t.string :image_url
      t.string :description
    end
  end
end
