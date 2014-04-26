class CreateSaleDetails < ActiveRecord::Migration
  def change
    create_table :sale_details do |t|
      t.integer :sale_id
      t.integer :food_id
      t.integer :quantity
      t.float :amount

      t.timestamps
    end
  end
end
