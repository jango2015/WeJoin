class SignUpController < ApplicationController

  protect_from_forgery :except => :create

  def create
    user_data = JSON.parse(params[:user])

    if User.find_by_email(user_data["email"])
      respond_to do |format|
        format.json { render json: {status: 'error'}.to_json }
      end
    else
      #require 'debugger'; debugger
      #User.new(name: user_data["name"], email: user_data["email"], password: user_data["password"]).save
      respond_to do |format|
        format.json { render json: {status: 'success'}.to_json , status: '200' }
      end
    end
  end

end
