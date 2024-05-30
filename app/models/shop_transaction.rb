class ShopTransaction < ApplicationRecord
  
  # Associations
  belongs_to :user, foreign_key: "user_id"
  has_many :payments, foreign_key: "shop_transaction_id"

  # Attributes
  attribute :total, :decimal
  attribute :paymentmethod, :string

  # Validations
  validates :paymentmethod, presence: true
  validates :total, presence: true, numericality: { greater_than: 0 }

  # Methods

  # Callbacks

end
