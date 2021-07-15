class Doc < ApplicationRecord
  belongs_to :user
  #has_one_attached :image
  #include ImageUploader::Attachment(:image)
  include ImageUploader::Attachment(:image)

  validates_presence_of :name, :image, :user_id
end
