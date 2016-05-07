class Topic < ActiveRecord::Base
  belongs_to :subject

  def self.search(search)
    where("title ILIKE ? OR description ILIKE ?", "%#{search}%", "%#{search}%" )
  end
end
