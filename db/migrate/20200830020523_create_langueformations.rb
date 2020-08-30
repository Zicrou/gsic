class CreateLangueformations < ActiveRecord::Migration[5.2]
  def change
    create_table :langueformations do |t|
      t.string :name

      t.timestamps
    end
  end
end
