class Bureausmember < ApplicationRecord
  belongs_to :user
  belongs_to :profil

  validates_presence_of :user_id, :profil_id, :duration, :started_at
end
