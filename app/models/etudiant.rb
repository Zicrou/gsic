class Etudiant < ApplicationRecord
    belongs_to :genre
    belongs_to :carteconsulaire
    belongs_to :boursier
    belongs_to :typebourse
    belongs_to :faireanneelangue
    belongs_to :province
end
