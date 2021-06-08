class CreateBureausmembers < ActiveRecord::Migration[5.2]
  def change
    create_table :bureausmembers do |t|
      t.references :user, foreign_key: true
      t.references :profil, foreign_key: true

      t.timestamps
    end
  end
end
