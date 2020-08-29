class AddCarteconsulaireRefsToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_reference :etudiants, :carteconsulaire, foreign_key: true
  end
end
