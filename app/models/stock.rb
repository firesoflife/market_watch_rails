class Stock < ApplicationRecord
    belongs_to :user
    validates :ticker, presence: true
end
