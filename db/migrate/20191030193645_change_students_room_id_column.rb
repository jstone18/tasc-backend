class ChangeStudentsRoomIdColumn < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :roomId, :room_id
  end
end
