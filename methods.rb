# any? and all? method 

sports = %w[football basketball baseball]

p sports.any? {|sport| sport.length == 5}
p sports.all? {|sport| sport.length < 100}

numbers = [1,3,4,5,6,7]

p numbers.find {|num| num.even?}

puts 

def custom_max(arr)
  return nil if arr.length == 0 
  
  max = arr[0]

  arr.each do |element|
    if element > max
      max= element
    end
  end
  max
end 

puts custom_max([1,2,4,5,6])