class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.integer :customerId
      t.string :name
      t.decimal :discount
      t.string :image
      t.references :address, foreign_key: true
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
