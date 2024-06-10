class Inventory < ApplicationRecord
  
  # Associations
  belongs_to :product, foreign_key: "product_id"

  # Attributes
  attribute :changetype, :string
  attribute :quantitychange, :integer
  attribute :newstocklevel, :integer

  # Validations
  validates :changetype, presence: true
  validates :quantitychange, presence: true
  validates :newstocklevel, presence: true

  # Methods

  # Callbacks
end
