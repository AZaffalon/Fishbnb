class Fish < ApplicationRecord
  belongs_to :fish_type
  belongs_to :user

  validates :name, presence: true
  # validates :price_per_week, numericality: { only_integer: true }
end
