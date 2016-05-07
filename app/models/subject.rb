class Subject < ActiveRecord::Base
  has_many :topics

  def self.search(search)
    where("name ILIKE ?", "%#{search}%")
  end

end
