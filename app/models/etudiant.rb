class Etudiant < ApplicationRecord
    belongs_to :genre
    belongs_to :carteconsulaire
    belongs_to :boursier
    belongs_to :typebourse
    belongs_to :faireanneelangue
    belongs_to :province
    belongs_to :langueformation

    validates_presence_of :nom, :prenom, :date_nasissance, :genre_id, :telephone, :passport, :date_passport_expiration, :carteconsulaire_id, :adresse, :boursier_id, :faireanneelangue_id, :province_id, :annee_debut_filiere, :province_uinversite_filiere, :universite_filiere, :filiere, :langueformation_id, :duree_formation, :annee_de_graduation, :niveau_formation
end
