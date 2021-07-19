class Newinformation < ApplicationRecord
    #include ImageUploader::Attachment(:photo)
    has_one_attached :photo

    validates_presence_of :title, :photo, :body
end
