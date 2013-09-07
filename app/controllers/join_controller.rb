class JoinController < ApplicationController
  def activity
    @join = Join.find(params[:id])
  end
end
