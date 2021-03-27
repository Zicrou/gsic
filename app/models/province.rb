class Province < ApplicationRecord
    has_many :students
    #belongs_to :zone

  validates_presence_of :name #, :zone_id

end
