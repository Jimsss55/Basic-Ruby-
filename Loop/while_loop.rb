require "debug"

count = 5 
while count < 10 
  puts count
  count+=1
end

debugger

str = "a"

while str.length < 3
  puts str
  str << "a"
end 

debugger

# Next keyword 
sentence = "I am in the state of $Happy ERa "

current_index = 0
last_index = sentence.length-1

while current_index <= last_index
  if sentence[current_index] != "$"
    current_index += 1
    next 
  end

  puts "We have $ at index: #{current_index}"
  current_index += 1
end

# Recursive 
# Factorial 

def factorial (num)
  return 1 if num == 1
  num*factorial(num-1)
end 



puts factorial(10)

# Reverse 
def reverse(str)
  return str if str.length == 1
  last_index = str[-1]
  sub_string = str[0, str.length-1]
  last_index + reverse(sub_string)
end

puts reverse("Jimpa")