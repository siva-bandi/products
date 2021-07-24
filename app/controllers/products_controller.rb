class ProductsController < ApplicationController
  def index
    page = params[:page] || 1
  	products = Product.page(page)

    render json: products
  end

  def show
    product = Product.find(params[:id])

    render json: product
  end

  def add_to_cart
    product = Product.find(params[:product_id])

    cart = Cart.find_by(email: params[:email])
    if cart.blank?
      cart = Cart.create!(email: params[:email])
    end

    cart.products << product
    cart.update(total: cart.products.sum(:price))

    render json: { total: cart.total, products: cart.products }
  end

  def remove_from_cart
    product = Product.find(params[:product_id])

    cart = Cart.find_by(email: params[:email])
    cart.products.delete(product)
    cart.update(total: cart.products.sum(:price))

    render json: { total: cart.total, products: cart.products }
  end
end