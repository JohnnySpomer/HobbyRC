class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.string :fax
      t.references :address, foreign_key: true
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
