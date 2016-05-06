class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :title
      t.text :description
      t.references :subject, index: true, foreign_key: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
