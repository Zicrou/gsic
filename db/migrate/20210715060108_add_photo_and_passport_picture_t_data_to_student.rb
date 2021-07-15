class AddPhotoAndPassportPictureTDataToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :photo_data, :text
    add_column :students, :passport_picture_data, :text
  end
end
