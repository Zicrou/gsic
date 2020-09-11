class Etudiant < ApplicationRecord
    belongs_to :genre
    belongs_to :carteconsulaire
    belongs_to :boursier
    belongs_to :typebourse, optional: true
    belongs_to :faireanneelangue
    belongs_to :province, optional: true
    belongs_to :langueformation

    validates_presence_of :nom, :prenom, :date_nasissance, :genre_id, :telephone, :passport, :date_passport_expiration, :carteconsulaire_id, :adresse, :boursier_id, :faireanneelangue_id, :annee_debut_filiere, :province_uinversite_filiere, :universite_filiere, :filiere, :langueformation_id, :duree_formation, :annee_de_graduation, :niveau_formation, :passport_image, :photo, :etreenchine

    mount_uploader :passport_image, EtudiantUploader
    mount_uploader :photo, EtudiantUploader

end
