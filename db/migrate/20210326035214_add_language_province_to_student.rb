class AddLanguageProvinceToStudent < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :language_province, :string
    add_column :students, :language_province, :bigint
  end
end
