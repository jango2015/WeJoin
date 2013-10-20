class ActivitiesController < ApplicationController
  def show
    @activity = Activity.find params[:id]
    render :json => @activity
  end

  def create
    @activity = params[:activity]
    @activity = Activity.create(title: @activity[:title],desc: @activity[:desc])
    redirect_to @activity
  end
end
