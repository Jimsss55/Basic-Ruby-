# inclusive_num = 1..5 #closed range (5 will be included)
# exclusive_num = 1...5 #open range (5 will be excluded)


# each method 
# 3.times {|count| puts "I am in loop number #{count}"}
3.times do |count|
  puts "Hello I am doing iteration"
  puts "Iteration #{count}"
end

puts 

names = ["Jimpa", "jamthso", "Thukten"]
names.each {|name| puts name.upcase}
puts 

[1,2,3,4,5].each do |count|
  calculation = count*count
  puts "Squrare of #{count} is #{calculation}"
end

puts 

# even odd

numbers = [1,2,3,4,5,6,7,8,9,10]
even = []
odd = []

numbers.each do |number|
  if number.even?
    even.push(number)
  else
    odd.push(number)
  end
end

p numbers
p even
p odd

# Nested loop
 shirts = %w[Black White Gray Blue]
 pants = %w[Joggers Jeans SweatPants]

 shirts.each do |shirt|
   pants.each do |pant|
     puts "Combination of shirt #{shirt} and pant #{pant}"
   end
 end
 puts 
#  

# Exercise 
def double_elements(arr)
  arr1=[]
  arr.each do |element|
      double = element*2
      arr1.push(double)
  end
  return arr1 
end 
p double_elements([1,2,3,4,5])

def extract_long_words (arr)
  str1=[]
  arr.each do |count|
      if count.length > 7
          str1.push(count)
      end 
  end
  return str1 
end 

p extract_long_words(["spaghetti", "penne", "fettuccine", "ziti"])

def pastas_and_sauces(pastas, sauces)
  pastas.each do |pasta|
      sauces.each do |sauce|
          puts "#{pasta.capitalize} with #{sauce.capitalize}"
      end 
  end 
end 

pastas_and_sauces(["fettucine", "spaghetti", "penne"], ["alfredo", "bolognese", "pesto"])