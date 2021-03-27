class RemovePassportFromStudent < ActiveRecord::Migration[5.2]
  def change
    remove_column :students, :passport, :string
  end
end
