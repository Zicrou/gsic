class CreateBoursiers < ActiveRecord::Migration[5.2]
  def change
    create_table :boursiers do |t|
      t.string :name

      t.timestamps
    end
  end
end
