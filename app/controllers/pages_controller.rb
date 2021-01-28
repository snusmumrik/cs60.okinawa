class PagesController < ApplicationController
  include HighVoltage::StaticPage

  def show
    case params[:id]
    when "welcome"
      response = Faraday.get "http://blog.cs60.okinawa/wp-json/wp/v2/posts?per_page=3"
      @articles = JSON.parse(response.body)
      render "welcome"
    end
  end
end
