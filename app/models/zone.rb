class Zone < ApplicationRecord
  belongs_to :user
  #has_many :provinces

  validates_presence_of :name, :codeqr, :user_id
  mount_uploader :codeqr, ZoneUploader

end
