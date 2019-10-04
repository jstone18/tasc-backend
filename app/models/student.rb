class Student < ApplicationRecord
  belongs_to :room
  has_many :attendances
end
