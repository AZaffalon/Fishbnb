class CreateFishTypes < ActiveRecord::Migration[6.0]
  def change
    create_table :fish_types do |t|
      t.string :common_name
      t.string :scientific_name
      t.string :origin

      t.timestamps
    end
  end
end
