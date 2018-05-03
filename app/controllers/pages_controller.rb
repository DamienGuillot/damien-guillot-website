class PagesController < ApplicationController

  def home
    @photos = Photo.all
    @videos = Video.all
  end

end
