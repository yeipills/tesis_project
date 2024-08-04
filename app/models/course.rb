class Course < ApplicationRecord
  belongs_to :professor
  has_many :materials
  has_many :enrollments
  has_many :users, through: :enrollments

  validates :nombre, presence: true
  validates :descripcion, presence: true
    # Supongamos que los cursos destacados son aquellos con una calificación de 4.5 o superior
  scope :featured, -> { where('rating >= ?', 4.5).limit(4) } # Ajusta el criterio según tus necesidades

  # O podrías definirlo como un método de clase

  def self.featured
    where("rating >= 4.5")
  end
end
