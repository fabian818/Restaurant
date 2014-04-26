class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :food_type_id
      t.string :noun
      t.text :description
      t.float :cost

      t.timestamps
    end
  end
end
