class CreateKlassesUsers < ActiveRecord::Migration
  def change
    create_table :klasses_users do |t|
      t.integer :klass_id
      t.integer :user_id
    end
  end
end
