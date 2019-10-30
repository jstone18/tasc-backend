class ChangeAttendancesStudentIdColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :attendances, :studentId, :student_id
  end
end
