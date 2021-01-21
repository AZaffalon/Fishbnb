class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :fish

  def current_status_range
    current_status_range = []
    return current_status_range if current_status == 'En attente'

    current_status_range = ['Validée', 'Refusée']
  end
end
