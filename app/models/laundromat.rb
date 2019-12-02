class Laundromat < ApplicationRecord
    has_many :orders
    has_many :employees
    has_many :customers, through: :orders

    has_secure_password
end

def self.add_laundromat_by_yelp_data(business)
    self.create(
        name: business["name"], 
        url: business["url"], 
        
        image_url: business["image_url"], 
        zipcode: business["location"]["zip_code"]
        
    )
end