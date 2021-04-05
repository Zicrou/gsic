class Etudiant < ApplicationRecord
    belongs_to :genre
    belongs_to :carteconsulaire
    belongs_to :boursier
    belongs_to :typebourse, optional: true
    belongs_to :faireanneelangue
    belongs_to :province
    belongs_to :langueformation
    belongs_to :user
    #belongs_to :zone, optional: true

    validates_presence_of :nom, :prenom, :date_nasissance, :genre_id, :telephone, :passport, :date_passport_expiration, :carteconsulaire_id, :adresse, :boursier_id, :faireanneelangue_id, :annee_debut_filiere, :universite_filiere, :filiere, :langueformation_id, :duree_formation, :annee_de_graduation, :niveau_formation, :passport_image, :photo, :etreenchine, :email, :user_id # :province_uinversite_filiere,

    #mount_uploader :passport_image, EtudiantUploader
    #mount_uploader :photo, EtudiantUploader


    def self.etudiant_zone(province)
        Etudiant.where(name)
    end

    def self.by_zone()
        Etudiant.where()
    end

    def self.generate_matricule_member_card(id, matricule)
        Etudiant.where(id: id).update(matricule: matricule)
    end
end
