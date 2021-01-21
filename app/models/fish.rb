class Fish < ApplicationRecord
  belongs_to :fish_type
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_one_attached :photo, dependent: :destroy
  geocoded_by :address
  validates :name, presence: true
  after_validation :add_city
  # after_validation :geocode, if: :will_save_change_to_address?
  # validates :price_per_week, numericality: { only_integer: true }
end


private

def add_city
  self.city = Geocoder.search(self.address)&.first&.municipality
end
