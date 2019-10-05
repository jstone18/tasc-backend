class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :present, :absent, :student_id

  belongs_to :student
end
