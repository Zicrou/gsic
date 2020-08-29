class RemoveTypebourseColumnFromEtudiant < ActiveRecord::Migration[5.2]
  def change
    remove_column :etudiants, :faire_annnee_langue_chinoise, :string
  end
end
