class CreateKlasses < ActiveRecord::Migration
  def change
    create_table :klasses do |t|
      t.string :name
      t.text :description
      t.datetime :appointment
      t.integer :duration
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
