class AddCartIdToCartsProducts < ActiveRecord::Migration[6.0]
  def change
  	add_column :carts_products, :cart_id, :integer
  	add_column :carts_products, :product_id, :integer
  end
end
