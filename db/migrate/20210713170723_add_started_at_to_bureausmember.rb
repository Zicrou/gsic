class AddStartedAtToBureausmember < ActiveRecord::Migration[5.2]
  def change
    add_column :bureausmembers, :started_at, :date
  end
end
