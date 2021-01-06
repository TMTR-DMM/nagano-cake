class Delivery < ApplicationRecord
  belongs_to :customer
  
  
  def order_address
    ["〒", postcode, address, name].join(' ')
  end
  
end
