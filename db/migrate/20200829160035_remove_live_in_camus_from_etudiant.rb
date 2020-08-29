class RemoveLiveInCamusFromEtudiant < ActiveRecord::Migration[5.2]
  def change
    remove_column :etudiants, :live_in_campus, :string
  end
end
