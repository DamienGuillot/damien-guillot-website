class PagesController < ApplicationController
  before_action :message

  def home
    @photos = Photo.all
    @videos = Video.all
  end

  def dashboard
    @photos = Photo.all
    @videos = Video.all
    @messages = Message.order("created_at DESC").all
  end

  private

  def message
    @message = Message.new
  end
end
