class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_items, dependent: :destroy
  
  enum payment_method:{"クレジットカード": 0, "銀行振込": 1}
  # enum order_status: {"入金待ち": 0, "入金確認": 1, "製作中": 2, "発送準備中": 3, "発送済み": 4}
  enum order_status: {before_payment: 0, payment_check: 1, making: 2, before_delivery: 3, deliveryed: 4}
  
end
