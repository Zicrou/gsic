class CreateZones < ActiveRecord::Migration[5.2]
  def change
    create_table :zones do |t|
      t.string :name
      t.string :codeqr
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
