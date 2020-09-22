class AddEmailToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_column :etudiants, :email, :string
  end
end
