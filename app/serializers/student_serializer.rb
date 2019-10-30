class StudentSerializer < ActiveModel::Serializer
  attributes :id, :firstName, :lastName, :age, :room_id, :streetAddress,
    :city, :state, :zip, :dob, :allergies, :medications, :drName, :drPhone, 
    :contactOneName, :contactOnePhone, :contactOneRelationship, :contactTwoName, 
    :contactTwoPhone, :contactTwoRelationship, :contactThreeName, :contactThreePhone, :contactThreeRelationship

  has_many :attendances
  belongs_to :room
end
