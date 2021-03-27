class AddHavedonechineselanguageToStudent < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :faireanneelangue, foreign_key: true
  end
end
