class RemoveTypeBourseRefsFromEtudiant < ActiveRecord::Migration[5.2]
  def change
    remove_column :etudiants, :type_bourse, :string
  end
end
