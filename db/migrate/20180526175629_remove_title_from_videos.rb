class RemoveTitleFromVideos < ActiveRecord::Migration[5.1]
  def change
    remove_column :videos, :title, :string
  end
end
