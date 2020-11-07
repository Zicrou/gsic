class AddProvinceLangueToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_column :etudiants, :province_langue, :bigint
    
  end
end
