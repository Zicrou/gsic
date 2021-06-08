class Newinformation < ApplicationRecord
    has_one_attached :photo
    validates_presence_of :title, :body
end
