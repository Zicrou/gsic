class AddPassportToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_column :etudiants, :passport_image, :string
  end
end
