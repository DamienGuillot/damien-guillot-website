class VideoUploader < CarrierWave::Uploader::Base
 include Cloudinary::Carrierwave
end
