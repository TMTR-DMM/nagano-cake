class Delivery < ApplicationRecord
  belongs_to :customer
  
  
  def order_address
    [address, name].join(' ')
  end
  
end
