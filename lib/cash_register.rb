
class CashRegister
  attr_accessor :total, :discount, :price, :items
  #establishes attributes for the class

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
    #ascribes variables to be accessed and applied throughout methods
  end

  def add_item(item, price, quantity = 1)
    @price = price
    @total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1

      end
    else
      @items << item
    end
  end

  def apply_discount
    if @discount > 0
      @removed = (price * discount)/100
      @total -= @removed
      return "After the discount, the total comes to $#{total}."
    else
      return "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total -= @price
  end

end
