class Payment < ApplicationRecord
  
  
  # Associations
  belongs_to :shop_transaction, foreign_key: "shop_transaction_id"

  # Attributes
  attribute :paymentmethod, :string
  attribute :amount, :decimal

  # Validations
  validates :paymentmethod, presence: true
  validates :amount, presence: true, numericality: { greater_than_or_equal_to: 0 }

  # Methods

  # Callbacks

end
