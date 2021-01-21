class ChangeDefaultCurrentStatusToBooking < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :current_status, :string, default: "En attente"
  end
end
