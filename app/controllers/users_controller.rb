class UsersController < ApplicationController
  def index
    @users = User.all
    @user = User.new
    @product = Product.new
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    @product = Product.create(product_params)
  end

  def show
    @user = User.find(params[:id])
  end




private
  def user_params
    params.require(:user).permit(:name, :admin, :password, :password_confirmation)
  end
end
