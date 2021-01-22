class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :fish
  validate :end_at_after_start_at
  validates :start_at, :end_at, presence: true,
    inclusion: { in: (Date.today..Date.today + 1.years) }
  private

  def end_at_after_start_at
    return if end_at.blank? || start_at.blank?

    if end_at < start_at
      errors.add :end_at, "Doit être postérieure à la date de début de réservation"
    end
  end

end
