class AddPassportnumberToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :passport_number, :string
  end
end
