require 'pry'
class CashRegister
  attr_accessor :total, :discount, :items, :price, :last_transaction
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(title, price, quantity = 1)
   self.total += (price*quantity)  #self = instance of the class += still invokes the method, setter method
   @items.fill(title, @items.length, quantity)
  end
  
  def apply_discount
   if discount == 0
    return "There is no discount to apply."
   else self.total -= self.total*discount/100
    return "After the discount, the total comes to $#{total}."
   end
  end
  
  def items
    @items
  end

  def void_last_transaction
     self.total -= @last_transaction.to_f
  end
end
  
