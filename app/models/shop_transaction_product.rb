class ShopTransactionProduct < ApplicationRecord
  
  # Associations
  belongs_to :product, foreign_key: "product_id"
  belongs_to :shop_transaction, foreign_key: "shop_transaction_id"

  # Attributes
  attribute :quantity, :integer
  attribute :unitprice, :decimal
  attribute :totalprice, :decimal

  # Validations
  validates :quantity, presence: true, numericality: { greater_than: 0 }
  validates :unitprice, presence: true, numericality: { greater_than: 0}
  validates :totalprice, presence: true, numericality: { greater_than: 0}

  # Methods

  # Callbacks

end
