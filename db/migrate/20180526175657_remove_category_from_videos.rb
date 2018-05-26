class RemoveCategoryFromVideos < ActiveRecord::Migration[5.1]
  def change
    remove_column :videos, :category, :string
  end
end
