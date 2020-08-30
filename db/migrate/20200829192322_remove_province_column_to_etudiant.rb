class RemoveProvinceColumnToEtudiant < ActiveRecord::Migration[5.2]
  def change
    remove_column :etudiants, :province, :string
  end
end
