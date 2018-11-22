class AddProductStatusToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :product_status, foreign_key: true
  end
end
