class Customer < ApplicationRecord
    has_many :orders
    has_many :laundromats , through: :orders
    has_many :employees, through: :orders
end
