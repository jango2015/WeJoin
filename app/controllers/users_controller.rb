class UsersController < ApplicationController

  protect_from_forgery :except => :create

  def create
    if User.find_by_email(params[:email])
      respond_to do |format|
        format.json { render json: {status: 'error'}.to_json }
      end
    else
      #User.new(name: user_data["name"], email: user_data["email"], password: user_data["password"]).save
      respond_to do |format|
        format.json { render json: {status: 'success'}.to_json, status: '200' }
      end
    end
  end
end
