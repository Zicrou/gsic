class AddImageDataToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :docs, :image_data, :text
  end
end
