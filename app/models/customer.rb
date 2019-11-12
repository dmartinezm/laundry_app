class Customer < ApplicationRecord
    has_many :orders
    has_many :laundromats , through: :orders
    has_many :employees, through: :orders

    has_secure_password

    validates :email, presence: true, uniqueness: true
end
