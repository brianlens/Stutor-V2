class AddTopicsToKlasses < ActiveRecord::Migration
  def change
    add_reference :klasses, :topic, index: true, foreign_key: true
  end
end
