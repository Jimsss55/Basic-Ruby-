require_relative './day2_input'

#   Iterate over each line and check whether each element follows the rule
# The levels are either all increasing or all decreasing.
# Any two adjacent levels differ by at least one and at most three.

arr = []
# Splitting the input into rows
$x.each_line do |line|
  next if line.strip.empty?
  arr << line.strip
end
p arr

# Iterating over the arr to check the increment or decrement
def iterating(arr)
  final = []
  arr.each do |element|

  end
end


iterating(arr)



