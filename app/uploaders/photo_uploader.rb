class PhotoUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  process eager: true  # Force version generation at upload time.

  process convert: 'jpg'

  version :product_card do
    resize_to_fit 400, 400
  end

  version :product_trip do
    resize_to_fit 800, 400
  end
end
