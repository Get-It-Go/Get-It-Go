class Converstion < ApplicationRecord
     has_many :messages
     belong_to :user
end
