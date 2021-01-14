class FishType < ApplicationRecord
  has_many :fishes
  # validates :origin, inclusion: { in: ["Amérique du nord", "Amérique centrale",
  #   "Amérique du sud", "Europe", "Asie", "Afrique"] }
end
