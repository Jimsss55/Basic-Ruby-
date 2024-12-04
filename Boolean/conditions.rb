# Predicate method 

if 5.odd?
  puts "The number is odd"
end

word = "Jamtsho"
if word.include?("Jt")
  puts "Substring does exists"
end 

# # Ternary operators 
value = 3<6 ? "Yes it is true" : "No, it is not true"
puts value 


# Calculator 

def add (a,b)
  a+b 
end 

def subtract(a,b)
  a-b 
end

def multiply(a,b)
  a*b 
end

def divide(a,b)
  a/b 
end

def Calculator (a,b,operation)
  if operation == "add"
    puts add(a,b)
  elsif operation == "subtract"
    puts subtract(a,b)
  elsif operation == "multiply"
    puts multiply(a,b)
  elsif operation == "divide"
    puts divide(a,b)
  end
end

Calculator(7,5,"divide")
    
