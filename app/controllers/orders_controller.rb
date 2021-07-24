class OrdersController < ApplicationController
  def place
  	cart = Cart.find_by(email: params[:email])
  	if cart.blank? || cart.products.blank?
  		return render json: { error: "cart is empty" }
  	end

  	order = Order.create!(total: 0, status: 'placed', email: cart.email)
  	cart.products.each do |product|
  		order.products << product
  	end
  	order.update(total: order.products.sum(:price))

  	cart.products.each { |product| cart.products.delete(product) }
  	cart.update(total: 0)

  	render json: { id: order.id, status: order.status, total: order.total, products: order.products }
  end

  def index
  	page = params[:page] || 1
  	orders = Order.where(email: params[:email]).page(page)
  	render json: orders
  end

  def show
  	order = Order.find(params[:id])
  	render json: order
  end

  def cart
  	cart = Cart.find_by(email: params[:email])
  	render json: { total: cart.total, products: cart.products }
  end
end
