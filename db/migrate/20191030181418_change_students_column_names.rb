class ChangeStudentsColumnNames < ActiveRecord::Migration[5.2]
  def change
    rename_column :students, :first_name, :firstName 
    rename_column :students, :last_name, :lastName 
    rename_column :students, :street_address, :streetAddress  
    rename_column :students, :room_id, :roomId 
    rename_column :students, :dr_name, :drName 
    rename_column :students, :dr_phone, :drPhone 
    rename_column :students, :contact1_name, :contactOneName 
    rename_column :students, :contact1_phone, :contactOnePhone 
    rename_column :students, :contact1_relationship, :contactOneRelationship 
    rename_column :students, :contact2_name, :contactTwoName 
    rename_column :students, :contact2_phone, :contactTwoPhone 
    rename_column :students, :contact2_relationship, :contactTwoRelationship 
    rename_column :students, :contact3_name, :contactThreeName 
    rename_column :students, :contact3_phone, :contactThreePhone 
    rename_column :students, :contact3_relationship, :contactThreeRelationship 
  end
end
