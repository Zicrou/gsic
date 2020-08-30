class RemoveBoursierColumnFromEtudiant < ActiveRecord::Migration[5.2]
  def change
    remove_column :etudiants, :boursier, :string
  end
end
