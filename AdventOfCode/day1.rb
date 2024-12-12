require_relative "day1_input"

class AocDay1

  # attr_accessor :left, right
#   Method to split the input into right and left
  def method_to_split(left,right)
    leftlist = []
    rightlist = []

    $x.each_line do |line|
      next if line.strip.empty?
      left, right = line.split
      leftlist << left.to_i
      rightlist << right.to_i
    end
    # method_to_sort(leftlist,rightlist)
  end

  def method_to_sort(leftlist,rightlist)
    left=leftlist.sort()
    right =rightlist.sort()
    # method_to_sum(left,right)
  end

  def method_to_sum(left,right)
    index = 0
    sum =0

    while index < left.length
        sum+= (left[index]-right[index]).abs
        index+=1
    end
    puts sum
  end

  def call
    method_to_split
  end
end

day1 = AocDay1.new.method_to_split([],[])
# day1.method_to_split([],[])




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
def similarity_score(leftlist, rightlist)

  score = 0
  leftlist.each do |left|
    count =0
    rightlist.each do |right|
      # puts "Left: #{left} and right: #{right}"
      count += 1 if left == right
      # puts "Count: #{count}"
    end

    score+= left*count
    # puts "Score: #{score}"
  end
  score
end

# p similarity_score(leftlist, rightlist)


#Test case for day 1

RSpec.describe AocDay1 do
  describe "#method_to_split" do
    it 'It will split the strings of input into right and left arrays from each line' do
      expect(left,right).to eq(left)
    end
  end
end