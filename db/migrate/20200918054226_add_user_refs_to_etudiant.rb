class AddUserRefsToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_reference :etudiants, :user, foreign_key: true
  end
end
