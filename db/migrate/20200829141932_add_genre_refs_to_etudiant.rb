class AddGenreRefsToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_reference :etudiants, :genre, foreign_key: true
  end
end
