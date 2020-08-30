class AddProvinceRefsToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_reference :etudiants, :province, foreign_key: true
  end
end
