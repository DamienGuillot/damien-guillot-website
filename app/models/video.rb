class Video < ApplicationRecord
  belongs_to :user
  mount_uploader :url, ImageUploader
end
