class AddZoneToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_column :etudiants, :zone, :bigint
  end
end
