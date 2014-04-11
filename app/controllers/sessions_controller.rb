class SessionsController < ApplicationController

  def index
  end

  def create
    @user = User.find_by_name(params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path, notice: "Logged in!"
    else
      flash.alert = "user name or password is invalid."
      render 'index'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
