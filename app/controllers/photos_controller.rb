class PhotosController < ApplicationController
  before_action :find_photo, only: :destroy

  def create
    @photo = Photo.new(params_photo)
    authorize @photo

    if @photo.save
      redirect_to root_path
    else
      render damien_dashboard_path
    end
  end

  def destroy
    authorize @photo
    @photo.destroy

    redirect_to root_path
  end

  private

  def find_photo
    @photo = Photo.find(params[:id])
  end

  def params_photo
    params.require(:photo).permit(:caterogy, :url)
  end
end
