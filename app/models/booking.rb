class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :fish
end
