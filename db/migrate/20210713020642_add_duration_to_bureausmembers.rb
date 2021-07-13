class AddDurationToBureausmembers < ActiveRecord::Migration[5.2]
  def change
    add_column :bureausmembers, :duration, :integer
  end
end
