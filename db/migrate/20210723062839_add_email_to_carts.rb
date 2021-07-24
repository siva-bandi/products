class AddEmailToCarts < ActiveRecord::Migration[6.0]
  def change
    add_column :carts, :email, :string
  end
end
