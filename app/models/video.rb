class Video < ApplicationRecord
  belongs_to :user
  mount_uploader :url, VideoUploader
end
