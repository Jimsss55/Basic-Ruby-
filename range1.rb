animals = %w[zebra horse takin deer]
words = %w[racecar selfless sentences level]
i =0

while i < animals.length do
  puts "The animal at index #{i} is #{animals[i]}"
  i+=1
end

zoo_length = animals.map {|animal| animal.length}
p zoo_length


# palindrome 
palindrome = words.select do |word| 
  word==word.reverse
end
p palindrome

# Reject 
reject_animal = animals.reject do |animal|
  animal.include?("e")
end
p reject_animal

# partition

number = [1,2,3,4,5,6,7,8,9,10]
even,odd = number.partition do |num|
  num.even?
end
p even
p odd

# Exercise 
def reverse_all(arr)
  rev = arr.map {|str| str.reverse}
end 

def words_with_letter(strs,letters)
  arr = strs.select{ |str| str.include?(letters)}
end 

def evens_and_odds(nums)
  even,odd = nums.partition {|num| num.even?}
end 