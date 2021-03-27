class RemoveEtudiantZoneCarteconsulaire < ActiveRecord::Migration[5.2]
  def change
    drop_table :etudiants
    drop_table :zones
    drop_table :carteconsulaires
  end
end
