class Newinformation < ApplicationRecord
    #has_one_attached :photo
    include ImageUploader::Attachment(:photo)

    validates_presence_of :title, :photo, :body
end
