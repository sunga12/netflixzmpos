class ShopTransactionProduct < ApplicationRecord
  belongs_to :shoptransaction
  belongs_to :product
end
