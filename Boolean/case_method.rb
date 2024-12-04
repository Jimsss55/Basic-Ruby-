# Case
def food_cat(food)
  case food 
  when "Ema"
    "Its very spicy"

  when "Kewa"
    "Yuck! Hate it"

  else 
    "Not in the country"
  end
end

puts food_cat("Ema")
puts food_cat("Kewa")
puts food_cat("Chowmin")


#Conditional Assignment Operator 
# It is used to assign a value to the variable if only the variable has a value of 0 

num=nil
p num

num ||=5
p num

num ||=10
p num

# Exercise for string 
def long_word(str)
  str.length > 7
end 

def first_longer_than_second (str1,str2)
  if str1.length>str2.length
      return true 
  else
      return false 
  end
end


long_word("Ruby")
first_longer_than_second("Python", "Ruby")