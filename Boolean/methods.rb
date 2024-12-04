def introduction (name, age)
  puts "My name is #{name.upcase}"
  puts "I am #{age} years old"
end

introduction("Jimpa", 20)

# The code below is show NameError as it does not recognize the global variable 
# name = "Sheindrey"
# def movies
#   puts name.upcase
# end

# movies

# Return Statement 
def add_sum(num1,num2)
  return num1+num2
end

result = add_sum(3,5)
p result


# Optional Parameter and Default Arguments  
def classroom(name, sec = "B")
  puts "#{name} #{sec}"
end

classroom("CR12", "A")
classroom("CR15")