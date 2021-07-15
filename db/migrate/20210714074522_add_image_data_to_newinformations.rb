class AddImageDataToNewinformations < ActiveRecord::Migration[5.2]
  def change
    add_column :newinformations, :photo_data, :text
  end
end
