class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :fish, null: false, foreign_key: true
      t.datetime :start_at
      t.datetime :end_at
      t.integer :current_cost
      t.string :current_status

      t.timestamps
    end
  end
end
