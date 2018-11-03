class CreateProvinces < ActiveRecord::Migration[5.2]
  def change
    create_table :provinces do |t|
      t.integer :provinceId
      t.string :name
      t.decimal :taxRate

      t.timestamps
    end
  end
end
