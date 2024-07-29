class Course < ApplicationRecord
  belongs_to :professor
  has_many :materials
  has_many :enrollments
  has_many :users, through: :enrollments

  validates :nombre, presence: true
  validates :descripcion, presence: true
end
