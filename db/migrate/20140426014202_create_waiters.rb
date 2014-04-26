class CreateWaiters < ActiveRecord::Migration
  def change
    create_table :waiters do |t|
      t.integer :person_id
      t.integer :clients
      t.float :salary
      t.boolean :state

      t.timestamps
    end
  end
end
