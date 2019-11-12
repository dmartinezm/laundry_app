class Employee < ApplicationRecord
    belongs_to :laundromat
    has_many :orders
    has_many :customers , through: :orders
end
