class UsersController < ApplicationController

  protect_from_forgery :except => :create

  def create
    if User.find_by_email(params[:email])
      render json: {status: 'error'}
    else
      User.new(name: params[:name], email: params[:email], password: params[:password]).save
      render json: {status: 'success'}
    end
  end
end
