class Career < ApplicationRecord
  belongs_to :university
  has_many :users
end
