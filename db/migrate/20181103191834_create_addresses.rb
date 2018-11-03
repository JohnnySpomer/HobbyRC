class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.integer :addressId
      t.string :address
      t.string :city
      t.references :province, foreign_key: true
      t.string :postalCode
      t.string :country

      t.timestamps
    end
  end
end
