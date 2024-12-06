class Product 
  attr_accessor :name, :price
  def initialize(name,price)
      @name= name
      @price=price
  end 
  
  def price=(new_price)
      @price = new_price if check_price?(new_price)
  end 
  
  def name=(new_name)
      @name = new_name if check_length?(new_name)
  end 
  
  def check_price?(new_price)
      new_price>0 
  end 
  
  def check_length?(new_name)
      new_name.length > 3 && new_name.length < 20
  end 
end 

book = Product.new("1984", 9.99)
p book.name # "1984"

book.name = "Harry Potter"
p book.name # "Harry Potter"

book.name = "OK"
p book.name # "TBD"

p book.price # 9.99

book.price = 24.99
p book.price # 24.99

book.price = -100
p book.price # 24.99