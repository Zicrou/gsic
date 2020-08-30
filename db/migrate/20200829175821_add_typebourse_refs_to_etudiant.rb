class AddTypebourseRefsToEtudiant < ActiveRecord::Migration[5.2]
  def change
    add_reference :etudiants, :typebourse, foreign_key: true
  end
end
