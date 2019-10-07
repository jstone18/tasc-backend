class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :dob, 
  :address [:street_address, :city, :state, :zip], :allergies, 
  :medications, :dr_name, :dr_phone, :room_id

  has_many :attendances
  belongs_to :room
end
