require 'pry'

class AocDay1
  attr_accessor :input, :leftlist, :rightlist, :sum, :index
  def initialize(input)
    @input = input
    @leftlist = []
    @rightlist = []
    @sum = 0
    @index = 0
  end

#   Method to split the input into right and left
  def method_to_split
    input.each_line do |line|
      next if line.strip.empty?
      left, right = line.split
      @leftlist << left.to_i
      @rightlist << right.to_i
    end
    [@leftlist, @rightlist]
  end

  def method_to_sort
    @leftlist=@leftlist.sort()
    @rightlist =@rightlist.sort()
  end

  def method_to_sum
    while @index < @leftlist.length
      @sum+= (@leftlist[@index]-@rightlist[@index]).abs
      @index+=1
    end
    @sum
  end

  def call
    method_to_split
    method_to_sum
  end
end

# input = "3 4\n4 3\n2 8"
# day1 = AocDay1.new(input)
# day1.call

# leftlist = []
# rightlist = []

# Method to split the input into right and lef
# $x.each_line do |line|
#   next if line.strip.empty?
#   left, right = line.split
#   leftlist << left.to_i
#   rightlist << right.to_i
# end

# # day1-a
# left = leftlist.sort()
# right = rightlist.sort()
index = 0
sum =0 

# while index < left.length
#     sum+= (left[index]-right[index]).abs
#     index+=1
# end

# puts sum


# day1-b
# def similarity_score(leftlist, rightlist)
#
#   score = 0
#   leftlist.each do |left|
#     count =0
#     rightlist.each do |right|
#       # puts "Left: #{left} and right: #{right}"
#       count += 1 if left == right
#       # puts "Count: #{count}"
#     end
#
#     score+= left*count
#     # puts "Score: #{score}"
#   end
#   score
# end
#
# # p similarity_score(leftlist, rightlist)
#
#
# #Test case for day 1
#
# RSpec.describe AocDay1 do
#   describe "#method_to_split" do
#     it 'It will split the strings of input into right and left arrays from each line' do
#       expect(left,right).to eq(left)
#     end
#   end
# end