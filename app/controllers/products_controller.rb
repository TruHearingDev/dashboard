class ProductsController < ApplicationController
  protect_from_forgery with: :null_session

  def index
    @products = Product.all()
    render json: { status: 200,
      data: @products }
  end

  def create
    product = Product.create(product_params)
    render json: product, status: status_of(product)
  end

  def product_params
    params.permit(:name, :description)
  end
end
