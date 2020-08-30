class AddTelephoneToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_column :etudiants, :telephone, :string
  end
end
