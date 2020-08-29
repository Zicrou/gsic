class AddFaireanneelangueRefsToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_reference :etudiants, :faireanneelangue, foreign_key: true
  end
end
