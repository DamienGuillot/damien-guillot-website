class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  before_action :message

  def home
    @photos = Photo.all
    @videos = Video.all
  end

  def dashboard
    @messages = Message.order("created_at DESC").all
    @photo = Photo.new
    @video = Video.new
  end

  private

  def message
    @message = Message.new
  end
end
