class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :order, optional: true
  belongs_to :cart, optional: true
  #it tells Rails that rows in line_items are the children of rows in carts and products. 

  def total_price
    product.price * quantity
  end    

end
