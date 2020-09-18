class CreateNiveauformations < ActiveRecord::Migration[5.2]
  def change
    create_table :niveauformations do |t|
      t.string :name

      t.timestamps
    end
  end
end
