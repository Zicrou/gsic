class Doc < ApplicationRecord

  has_one_attached :image
  validates_presence_of :name, :image
end
