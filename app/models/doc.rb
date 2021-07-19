class Doc < ApplicationRecord
  belongs_to :user
  #include DocumentUploader::Attachment(:image)
  has_one_attached :image

  validates_presence_of :name, :image, :user_id
end
