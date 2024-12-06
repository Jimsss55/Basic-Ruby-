# Methods 
# each = iterates over each key value pair 
# each_key = iterates over each key 
# each_value = iterates over each values 
# keys = return arrays of hash keys 
# values = return arrays of hash values 


students = {
  "Jimpa": 21,
  "Jamtsho": 22,
  "Thukten": 23
}

students.each {|name,age| puts "Name : #{name} and age: #{age}"}
puts 

students.each_key {|key| puts "Name is key #{key}"}
students.each_value {|value| puts "Value of hash is value #{value}"}
puts students.keys
puts students.values


puts 

# Exercise 
def word_frequency(text)
  counts = {}

  words = text.split(" ")
  words.each do |word|
    if counts[word].nil?
      counts[word]=1
    else
      counts[word]+=1
    end
  end
  counts
end

puts word_frequency("blue red blue green")