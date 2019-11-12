class Order < ApplicationRecord
    belongs_to :customer
    belongs_to :laundromat
    belongs_to :employee
end
