class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :productId
      t.string :description
      t.integer :count
      t.decimal :weight
      t.decimal :price
      t.string :image

      t.timestamps
    end
  end
end
