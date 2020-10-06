class AddZoneToProvince < ActiveRecord::Migration[5.2]
  def change
    add_reference :provinces, :zone, foreign_key: true
  end
end
