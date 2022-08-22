class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :category, null: false, foreign_key: true
      t.text :body
      t.string :name
      t.float :price
      t.integer :quantity

      t.timestamps
    end
  end
end
