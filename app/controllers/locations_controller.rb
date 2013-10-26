class LocationsController < ApplicationController
  protect_from_forgery :except => :create
  def show
    @location = Location.find params[:id]
    render :json => @location
  end

  def create
    @location = params[:location]
    @location = Location.create(title: @location[:title],desc: @location[:desc])
    redirect_to @location
  end

  def near
    locations = []
    my_location = params[:my_location]
    Location.all.each do |location|
      if get_distance_hav(location.latitude, location.longitude, 1, 1) <= 10
      #if get_distance_hav(location.latitude, location.longitude, my_location[:latitude], my_location[:longitude]) >= 0
        locations << location
      end
    end
    render :json => locations
  end

  private
  include Math
  def hav(theta)
    s = sin(theta / 2)
    s * s
  end

  def get_distance_hav(lat0, lng0, lat1, lng1)
    earth_radius = 6371
    lat0 = radians(lat0)
    lat1 = radians(lat1)
    lng0 = radians(lng0)
    lng1 = radians(lng1)

    dlng = (lng0 - lng1).abs
    dlat = (lat0 - lat1).abs
    h = hav(dlat) + cos(lat0) * cos(lat1) * hav(dlng)
    2 * earth_radius * asin(sqrt(h))
  end

  def radians(angle)
    angle/180 * PI
  end
end
