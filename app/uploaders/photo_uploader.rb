# encoding: utf-8

class PhotoUploader < CarrierWave::Uploader::Base

 include Cloudinary::CarrierWave

  version :thumb do
    process resize_to_fill: [200,200]
  end

  version :large do
    # returns an image with a maximum width of 100px
    # while maintaining the aspect ratio
    # 10000 is used to tell CW that the height is free
    # and so that it will hit the 100 px width first
    process :resize_to_fit => [600, 10000]
  end
end
