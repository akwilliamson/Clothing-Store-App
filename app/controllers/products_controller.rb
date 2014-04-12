class ProductsController < ApplicationController
  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    if @product.save
      redirect_to :back, notice: "Product added!"
    else
      redirect_to :back, notice: "Product not added!"
    end
  end

  def show
    @product = Product.find(params[:id])
  end

private
  def product_params
    params.require(:product).permit(:name, :price, :description, :pic)
  end
end
