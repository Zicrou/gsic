class CreateCarteconsulaires < ActiveRecord::Migration[5.2]
  def change
    create_table :carteconsulaires do |t|
      t.string :name

      t.timestamps
    end
  end
end
