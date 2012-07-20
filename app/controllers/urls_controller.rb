class UrlsController < ApplicationController

  def index
    # if params exist
    #   @url = Url.find(params[:id])
    #   redirect_to @url
  end

  def new
  end

  def show
    @url = Url.find(params[:id])
  end

  def redirect
    @url = Url.find(params[:id])
    redirect_to @url.link
  end

  def create
    @url = Url.create(:link =>params[:link])
    redirect_to url_path(@url)
  end

end
