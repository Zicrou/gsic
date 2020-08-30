class RemovedTelephoneIntegerFromEtudiant < ActiveRecord::Migration[5.2]
  def change
    remove_column :etudiants, :telephone, :bigint
  end
end
