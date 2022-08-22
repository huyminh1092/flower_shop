class CreateProductdetails < ActiveRecord::Migration[7.0]
  def change
    create_table :productdetails do |t|
      t.string :color
      t.string :origin
      t.integer :status
      t.string :description
      t.integer :product_id

      t.timestamps
    end
    add_index :productdetails, :product_id
  end
end
