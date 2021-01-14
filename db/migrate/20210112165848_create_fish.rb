class CreateFish < ActiveRecord::Migration[6.0]
  def change
    create_table :fish do |t|
      t.string :name
      t.integer :price_per_week
      t.string :colour
      t.integer :length
      t.references :fish_type, null: false, foreign_key: true
      t.string :available
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
