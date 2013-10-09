class ActivitiesController < ApplicationController
  def show
    @activity = Activity.find params[:id]
  end

  def new
  end

  def create
    @activity = Activity.new(post_params)
    @activity.save
    redirect_to @activity
  end

  private

  def post_params
    params.require(:Activity).permit(:title, :desc)
  end
end
