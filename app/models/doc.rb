class Doc < ApplicationRecord
  belongs_to :user
  include ImageUploader::Attachment(:image)

  validates_presence_of :name, :image, :user_id
end
