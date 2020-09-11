class CreateYesNos < ActiveRecord::Migration[5.2]
  def change
    create_table :yes_nos do |t|
      t.string :name

      t.timestamps
    end
  end
end
