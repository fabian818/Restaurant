class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.integer :person_id
      t.float :money_invested
      t.integer :visits

      t.timestamps
    end
  end
end
