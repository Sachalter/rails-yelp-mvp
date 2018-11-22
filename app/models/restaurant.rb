class Restaurant < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validate :phone_number
  validates :category, presence: true, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"]}
  has_many :reviews, dependent: :destroy
end
