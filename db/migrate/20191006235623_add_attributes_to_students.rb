class AddAttributesToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :dob, :string
    add_column :students, :address, :hstore
    add_column :students, :allergies, :string, default: "NKA", null: false
    add_column :students, :medications, :string
    add_column :students, :dr_name, :string
    add_column :students, :dr_phone, :string
  end
end
