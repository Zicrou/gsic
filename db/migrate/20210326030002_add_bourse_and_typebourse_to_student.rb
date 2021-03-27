class AddBourseAndTypebourseToStudent < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :boursier, foreign_key: true
    add_reference :students, :typebourse, foreign_key: true
  end
end 
