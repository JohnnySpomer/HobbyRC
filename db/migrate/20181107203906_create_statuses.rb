class CreateStatuses < ActiveRecord::Migration[5.2]
  def change
    create_table :statuses do |t|
      t.integer :statusId
      t.string :name

      t.timestamps
    end
  end
end
