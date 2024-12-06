require_relative "day1_input"

leftlist = []
rightlist = []

# Method to split the input into right and lef
$x.each_line do |line|
  next if line.strip.empty?
  left, right = line.split
  leftlist << left.to_i
  rightlist << right.to_i
end

# leftlist = [3,4,2,1,3,3]
# rightlist = [4,3,5,3,9,3]

left = leftlist.sort()
right = rightlist.sort()
index = 0
sum =0 

while index < left.length
    sum+= (left[index]-right[index]).abs
    index+=1
end 

puts sum 


