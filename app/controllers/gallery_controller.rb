class GalleryController < ApplicationController
  before_action :authenticate_user!

  def home
    @photos = current_user.photos
  end

  def upload
    @photo = Photo.new(photo_params)
    # @photo.image = photo_params[:image]
    @photo.user = current_user
    @photo.save
    redirect_to root_path
  end

  def delete_photo
    @photo = Photo.find(params[:id])
    if current_user.id = @photo.user.id
      @photo.delete
    end
    redirect_to root_path
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end
end
