class RemoveUserIdFromPhotos < ActiveRecord::Migration[5.1]
  def change
    remove_column :photos, :user_id, :bigint
  end
end
