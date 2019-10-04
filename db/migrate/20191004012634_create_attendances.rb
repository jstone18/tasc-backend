class CreateAttendances < ActiveRecord::Migration[5.2]
  def change
    create_table :attendances do |t|
      t.boolean :present
      t.boolean :absent
      t.belongs_to :student, foreign_key: true

      t.timestamps
    end
  end
end
