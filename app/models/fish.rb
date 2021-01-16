class Fish < ApplicationRecord
  belongs_to :fish_type
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo, dependent: :destroy

  validates :name, presence: true
  # validates :price_per_week, numericality: { only_integer: true }
end
