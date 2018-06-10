class VideosController < ApplicationController
  before_action :find_video, only: :destroy

  def create
    @video = Video.new(params_video)
    authorize @video

    if @video.save
      redirect_to root_path
    else
      render damien_dashboard_path
    end
  end

  def destroy
    authorize @video
    @video.destroy

    redirect_to root_path
  end

  private

  def find_video
    @video = Video.find(params[:id])
  end

  def params_video
    params.require(:video).permit(:url)
  end
end
