class RoomSerializer < ActiveModel::Serializer
  attributes :id, :title

  has_many :students
end
