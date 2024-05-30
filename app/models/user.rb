class User < ApplicationRecord

    # Associations
    has_many :shop_transactions, foreign_key: 'user_id', dependent: :destroy
  
    # Attributes
    attribute :username, :string
    attribute :role, :string
    attribute :fullname, :string
  
    # Validations
    validates :username, presence: true, length: { minimum:5, maximum:20 }, uniqueness: true
    validates :role, presence: true
    validates :fullname, presence: true, length: { maximum: 100 }


    # Methods
  
    # Callbacks
end
