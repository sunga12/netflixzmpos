class CreatePayments < ActiveRecord::Migration[7.1]
  def change
    create_table :payments do |t|
      t.string :paymentmethod
      t.decimal :amount, :precision => 10, :scale => 2
      t.timestamp :paymentdate
      t.references :shop_transaction, null: false, foreign_key: true

      t.timestamps
    end
  end
end
