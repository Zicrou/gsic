class AddGenreLangueformationNiveauformationProvinceToStudent < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :genre, foreign_key: true
    add_reference :students, :langueformation, foreign_key: true
    add_reference :students, :niveauformation, foreign_key: true
    add_reference :students, :province, foreign_key: true
  end
end
