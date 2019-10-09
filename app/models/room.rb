class Room < ApplicationRecord
  has_many :students, dependent: :destroy
end
