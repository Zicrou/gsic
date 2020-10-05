class Province < ApplicationRecord
    has_many :etudiants
    #belongs_to :zone

  validates_presence_of :name #zone_id

end
