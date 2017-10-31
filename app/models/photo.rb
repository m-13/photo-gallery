class Photo < ApplicationRecord
  belongs_to :user
  mount_uploader :image, PhotoUploader

  def image_full
    image.url
  end

  def image_thumb
    image.thumb.url
  end
end
