class CashRegister
  
  attr_reader :discount
  attr_accessor :total
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end
  
  def add_item(name, price, quantity = 1)
    @total += price*quantity
  end
  
  def apply_discount
    @total *= (100-discount)/100
  end
end
