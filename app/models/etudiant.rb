class Etudiant < ApplicationRecord
    belongs_to :genre
    belongs_to :carteconsulaire
end
