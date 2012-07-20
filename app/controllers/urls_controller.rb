class UrlsController < ApplicationController
  def index
    @urls = Url.all
  end

  def new
  end

  def create
    Url.create :link => params[:link],
               :shortcode => ((0...8).map{65.+(rand(25)).chr}.join)
    redirect_to urls_path
  end

  def redirect
    url = Url.find_by_shortcode(params[:shortcode])
    redirect_to url.link
  end
end
