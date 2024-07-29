class User < ApplicationRecord
  has_secure_password
  belongs_to :role
  belongs_to :career, optional: true
  has_many :enrollments
  has_many :courses, through: :enrollments
  has_many :notifications

  validates :nombre_completo, presence: true
  validates :email, presence: true, uniqueness: true
  validates :user_name, presence: true, uniqueness: true
  validates :password, length: { minimum: 6 }, if: -> { new_record? || !password.nil? }

  def self.from_omniauth(auth)
    where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
      user.nombre_completo = auth.info.name
      user.email = auth.info.email
      user.user_name = auth.info.email.split('@').first
      user.password = SecureRandom.hex(15)
    end
  end
end
