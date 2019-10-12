class RenameAttendancesColumns < ActiveRecord::Migration[5.2]
  def change
    rename_column :attendances, :present, :check_in
    rename_column :attendances, :absent, :check_out
  end
end
