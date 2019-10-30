class ChangeColumnNamesInAttendance < ActiveRecord::Migration[5.2]
  def change
    rename_column :attendances, :check_in, :checkIn
    rename_column :attendances, :student_id, :studentId
  end
end
