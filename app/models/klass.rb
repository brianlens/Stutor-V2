class Klass < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_one :topic
  belongs_to :stutor, class_name:"User", foreign_key: 'user_id'
end
