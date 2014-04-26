class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.integer :person_id
      t.string :username
      t.string :password
      t.boolean :state

      t.timestamps
    end
  end
end
