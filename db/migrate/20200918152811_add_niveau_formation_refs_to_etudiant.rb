class AddNiveauFormationRefsToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_reference :etudiants, :niveauformation, foreign_key: true
  end
end
