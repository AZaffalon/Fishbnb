class AddCityToFish < ActiveRecord::Migration[6.0]
  def change
    add_column :fish, :city, :string
  end
end
