class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.integer :orderId
      t.date :date
      t.integer :productCount
      t.string :totalPrice
      t.string :decimal
      t.boolean :completed

      t.timestamps
    end
  end
end
