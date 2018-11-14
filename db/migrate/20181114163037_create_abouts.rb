class CreateAbouts < ActiveRecord::Migration[5.2]
  def change
    create_table :abouts do |t|
      t.string :name
      t.string :mainText
      t.string :secondaryText
      t.string :finalText
      t.string :imageOne
      t.string :imageTwo

      t.timestamps
    end
  end
end
