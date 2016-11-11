class ShowsController < ApplicationController
  def show
    @show = Show.find(params[:id])
  end

  def embed(video_url)
    @show = Show.find(params[:id])
     youtube_id = @show.video_url.split("=").last
     content_tag(:iframe, nil, src: "//www.youtube.com/embed/#{youtube_id}")
   end
end
