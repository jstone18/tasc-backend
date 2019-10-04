class AddRoomReferenceToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :room, foreign_key: true
  end
end
