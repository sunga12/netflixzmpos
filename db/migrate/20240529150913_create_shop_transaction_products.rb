class CreateShopTransactionProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :shop_transaction_products do |t|
      t.references :shop_transaction, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :quantity
      t.decimal :unitprice, :precision => 10, :scale => 2
      t.decimal :totalprice, :precision => 10, :scale => 2

      t.timestamps
    end
  end
end
