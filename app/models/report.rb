class Report < ApplicationRecord

    # Associations
    has_many :shop_transactions, foreign_key: "shop_transaction_id"
  
    # Attributes
    attribute :reporttype, :string
    attribute :reportdate, :date
    attribute :reportcontent, :text
    attribute :generatedat, :datetime

  
    # Validations
    validates :reportdate, presence: true
    validates :reporttype, presence: true
    validates :reportcontent, presence: true
    validates :reneratedat, presence: true

  
    # Methods
  
    # Callbacks
end
