class CreateChefs < ActiveRecord::Migration
  def change
    create_table :chefs do |t|
      t.integer :person_id
      t.integer :cooked
      t.float :salary

      t.timestamps
    end
  end
end
