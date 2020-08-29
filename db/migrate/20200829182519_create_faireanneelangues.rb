class CreateFaireanneelangues < ActiveRecord::Migration[5.2]
  def change
    create_table :faireanneelangues do |t|
      t.string :name

      t.timestamps
    end
  end
end
