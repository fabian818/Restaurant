class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.integer :client_id
      t.integer :waiter_id
      t.float :total_cost
      t.boolean :state

      t.timestamps
    end
  end
end
