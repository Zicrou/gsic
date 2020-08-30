class AddLangueFormationRefsToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_reference :etudiants, :langueformation, foreign_key: true
  end
end
