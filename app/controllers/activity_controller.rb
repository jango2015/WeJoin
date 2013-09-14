class ActivityController < ApplicationController
  def view
    @activity = Activity.find(params[:id])
  end
end
