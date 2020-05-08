class CreateEtudiants < ActiveRecord::Migration[5.2]
  def change
    create_table :etudiants do |t|
      t.string :nom
      t.string :prenom
      t.date :date_nasissance
      t.string :genre, :limit => 1, :null => false
      t.bigint :telephone
      t.string :passport
      t.date :date_passport_expiration
      t.string :live_in_campus
      t.string :adresse
      t.string :boursier
      t.string :type_bourse
      t.date :annee_langue_chinoise
      t.string :province
      t.string :faire_annnee_langue_chinoise
      t.string :universite_annee_langue_chinoise
      t.date :annee_debut_filiere
      t.string :province_uinversite_filiere
      t.string :universite_filiere
      t.string :filiere
      t.integer :duree_formation
      t.string :langue_de_formation
      t.date :annee_de_graduation
      t.integer :niveau_formation

      t.timestamps
    end
  end
end
