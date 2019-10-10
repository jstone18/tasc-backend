class AddColumnsToStudents < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :street_address, :string
    add_column :students, :city, :string
    add_column :students, :state, :string
    add_column :students, :zip, :integer
    add_column :students, :dob, :string
    add_column :students, :allergies, :string
    add_column :students, :medications, :string
    add_column :students, :dr_name, :string
    add_column :students, :dr_phone, :string
    add_column :students, :contact1_name, :string
    add_column :students, :contact1_phone, :string
    add_column :students, :contact1_relationship, :string
    add_column :students, :contact2_name, :string
    add_column :students, :contact2_phone, :string
    add_column :students, :contact2_relationship, :string
    add_column :students, :contact3_name, :string
    add_column :students, :contact3_phone, :string
    add_column :students, :contact3_relationship, :string 
  end
end
