class AddMatriculeToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_column :etudiants, :matricule, :string
  end
end
