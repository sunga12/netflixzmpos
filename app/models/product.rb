class Product < ApplicationRecord
  
  # Associations
  has_many :shop_transaction_products, foreign_key: "shop_transaction_product_id"
  has_many :inventories, foreign_key: "product_id"
  # Attributes
  attribute :name, :string
  attribute :description, :string
  attribute :category, :string
  attribute :price, :decimal
  attribute :sku, :string
  attribute :stocklevel, :integer
  attribute :reorderlevel, :integer

  # Validations
  validates :name, presence: true
  validates :description, presence: true, length: { maximum: 150 }
  validates :category, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :stocklevel, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :reorderlevel, presence: true, numericality: { greater_than_or_equal_to: 0 }

  # Methods

  # Callbacks

end
