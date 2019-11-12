class Laundromat < ApplicationRecord
    has_many :orders
    has_many :employees
    has_many :customers, through: :orders

    has_secure_password
end
