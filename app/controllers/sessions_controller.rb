class SessionsController < ApplicationController

  def index
  end

  def create
    @user = User.find_by_name(params[:name])
    if @user && @user.authenticate(params[:password]) && @user.admin != nil
      session[:user_id] = @user.id
      redirect_to users_path, notice: "Logged in!"
    elsif @user && @user.authenticate(params[:password]) && @user.admin == nil
      session[:user_id] = @user.id
      redirect_to new_product_path, notice: "Logged in!"
    else
      flash.alert = "user name or password is invalid."
      render 'products/index'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end
