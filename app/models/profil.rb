class Profil < ApplicationRecord
  has_one :bureausmember

  validates_presence_of :name
end
