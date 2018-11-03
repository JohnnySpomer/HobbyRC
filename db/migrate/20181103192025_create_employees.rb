class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.integer :employeeId
      t.string :position
      t.references :customerId, foreign_key: true

      t.timestamps
    end
  end
end
