class Doc < ApplicationRecord
  belongs_to :user
  #has_one_attached :image
  include DocumentUploader::Attachment(:image)

  validates_presence_of :name, :image, :user_id
end
