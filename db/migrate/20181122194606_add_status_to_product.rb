class AddStatusToProduct < ActiveRecord::Migration[5.2]
  def change
    add_reference :products, :status, foreign_key: true
  end
end
