class ChangeStartAndEndFromBookings < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :start_at, :date
    change_column :bookings, :end_at, :date
  end
end
