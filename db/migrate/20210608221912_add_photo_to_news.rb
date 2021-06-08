class AddPhotoToNews < ActiveRecord::Migration[5.2]
  def change
    add_column :newinformations, :photo, :string
  end
end
