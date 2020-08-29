class RemoveGenreColumnToEtudiant < ActiveRecord::Migration[5.2]
  def change
    remove_column :etudiants, :genre, :string
  end
end
