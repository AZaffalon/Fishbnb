class AddCommentToFish < ActiveRecord::Migration[6.0]
  def change
    add_column :fish, :comment, :text
  end
end
