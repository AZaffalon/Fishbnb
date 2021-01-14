class RemoveAvailableToFish < ActiveRecord::Migration[6.0]
  def change
    remove_column :fish, :available
  end
end
