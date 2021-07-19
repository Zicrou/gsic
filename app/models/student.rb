class Student < ApplicationRecord
    belongs_to :genre
    #belongs_to :carteconsulaire
    belongs_to :boursier
    belongs_to :typebourse, optional: true
    belongs_to :faireanneelangue
    belongs_to :province
    belongs_to :langueformation
    belongs_to :niveauformation
    belongs_to :user
    #belongs_to :zone, optional: true

    validates_presence_of :name, :surname, :genre_id, :date_of_birth, :telephone, :email, :passport_number, :passport_expiration_date, :address, :are_you_in_china, :photo, :passport_picture, :boursier_id, :typebourse_id, :faireanneelangue_id, :language_province, :year_of_chinese_language, :university_of_chinese_language_year, :starting_year_major, :province_id, :university_major, :major, :langueformation_id, :major_duration, :graduation_year, :niveauformation_id, :user_id
    #validates_presence_of :name, :surname, :date_of_birth, :genre_id, :telephone, :passport, :passport_expiration_date, :address, :boursier_id, :faireanneelangue_id, :starting_year_major, :province_id, :university_major, :major, :langueformation_id, :major_duration, :graduation_year, :niveauformation_id, :passport_picture, :photo, :are_you_in_china, :email, :user_id # :province_uinversite_filiere,

    has_one_attached :passport_picture
    has_one_attached :photo
    #include ImageUploader::Attachment(:photo)
    #include ImageUploader::Attachment(:passport_picture)

    #mount_uploader :passport_image, EtudiantUploader
    #mount_uploader :photo, EtudiantUploader
    #mount_uploader :passport_picture, EtudiantUploader
    #mount_uploader :photo, EtudiantUploader

    def self.recent
        order("province_id ASC")
    end
end
