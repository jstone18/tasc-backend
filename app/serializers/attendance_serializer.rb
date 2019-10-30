class AttendanceSerializer < ActiveModel::Serializer
  attributes :id, :checkIn, :student_id

  attribute :created_at do
    object.created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  attribute :updated_at do
    object.created_at.strftime("%A, %d %b %Y %l:%M %p")
  end

  belongs_to :student
end
