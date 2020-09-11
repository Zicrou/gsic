class AddPhotoToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_column :etudiants, :photo, :string
  end
end
