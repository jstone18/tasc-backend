class StudentSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :age, :room_id

  has_many :attendances
  belongs_to :room
end
