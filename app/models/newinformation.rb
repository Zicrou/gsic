class Newinformation < ApplicationRecord
    include ImageUploader::Attachment(:photo)

    validates_presence_of :title, :photo, :body
end
