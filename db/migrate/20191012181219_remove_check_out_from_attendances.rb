class RemoveCheckOutFromAttendances < ActiveRecord::Migration[5.2]
  def change
    remove_column :attendances, :check_out
  end
end
