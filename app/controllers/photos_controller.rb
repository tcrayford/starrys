class PhotosController < ApplicationController
  def index
    user = User.find_by_username!(params[:username])
    @photos = user.photos
  end
end
