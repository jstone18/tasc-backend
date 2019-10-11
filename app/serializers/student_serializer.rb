class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :room_id, :street_address,
    :city, :state, :zip, :dob, :allergies, :medications, :dr_name, :dr_phone, 
    :contact1_name, :contact1_phone, :contact1_relationship, :contact2_name, 
    :contact2_phone, :contact2_relationship, :contact3_name, :contact3_phone, :contact3_relationship

  has_many :attendances
  belongs_to :room
end
