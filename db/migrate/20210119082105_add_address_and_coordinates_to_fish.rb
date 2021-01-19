class AddAddressAndCoordinatesToFish < ActiveRecord::Migration[6.0]
  def change
    add_column :fish, :address, :string
    add_column :fish, :longitude, :float
    add_column :fish, :latitude, :float
  end
end
