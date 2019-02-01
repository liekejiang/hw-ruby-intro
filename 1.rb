
class BookInStock
# YOUR CODE HERE
  attr_accessor :isbn, :price
  def initialize(isbn, price)
    begin
    
      raise ArgumentError if isbn == ""
      raise ArgumentError if price <= 0

      @isbn = isbn
      @price = price
      
    end
  end
  

  def price_as_string
      price_string = format("%%.2",@price).to_s
      puts "$" + price_string
  end
end



a = BookInStock.new("a",10)
a.isbn = 'b'
