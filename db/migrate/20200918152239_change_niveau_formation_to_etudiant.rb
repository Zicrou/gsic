class ChangeNiveauFormationToEtudiant < ActiveRecord::Migration[5.2]
  def change
    change_column :etudiants, :niveau_formation, :string
  end
end
