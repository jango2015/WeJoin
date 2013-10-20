class LocationsController < ApplicationController
  def show
    @location = Location.find params[:id]
    render :json => @location
  end

  def create
    @location = params[:location]
    @location = Location.create(title: @location[:title],desc: @location[:desc])
    redirect_to @location
  end
end
