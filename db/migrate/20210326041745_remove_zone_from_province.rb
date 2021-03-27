class RemoveZoneFromProvince < ActiveRecord::Migration[5.2]
  def change
    remove_reference :provinces, :zone
  end
end
