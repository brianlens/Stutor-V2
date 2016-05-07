class Topic < ActiveRecord::Base
  belongs_to :subject
  has_many :klasses

  def self.search(search)
    where("title ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%" )
  end
end
