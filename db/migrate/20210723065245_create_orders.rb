class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.float :total
      t.integer :products_count
      t.string :status
      t.string :email

      t.timestamps
    end
  end
end
