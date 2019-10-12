class AddDefaultToAttendances < ActiveRecord::Migration[5.2]
  def change
    change_column :attendances, :check_in, :boolean, :default => false
    change_column :attendances, :check_out, :boolean, :default => true
  end
end
