class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :check_in, :check_out, :student_id

  belongs_to :student
end
