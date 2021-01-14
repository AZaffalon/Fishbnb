class AddAvailableToFish < ActiveRecord::Migration[6.0]
  def change
    add_column :fish, :available, :boolean
  end
end
