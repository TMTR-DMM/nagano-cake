class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :item
  
  enum production_status: {cannot_be_started: 0, waiting_for_production: 1, in_production: 2, production_completed: 3}
  
end
