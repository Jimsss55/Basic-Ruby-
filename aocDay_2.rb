require_relative 'day2_input'
require 'pry'
class Day2_a
  attr_accessor :input, :input_arr, :incre_decre_none
  def initialize(input)
    @input = input
    @input_arr= []
    @incre_decre_none =[]
  end

  def method_to_split
    $x.each_line do |line|
      next if line.strip.empty?
      @input_arr << line.split.map(&:to_i)
    end
    @input_arr
  end

  def check_incre_decre
    decrement = 0
    @incre_decre_none=@input_arr.map do |line|
      decrement= line.each_cons(2).count {|a,b| a>b}
      if decrement > 2
        "decrement"
      else
        "increment"
      end
    end
  end

  def method_valid_incre
    increment_count = 0
    cleaned_increment_arr = []
    @input_arr.each_with_index do |line,i|
      if @incre_decre_none[i] == "increment"
        # binding.pry
        cleaned_increment_arr = increment(line)
          valid = cleaned_increment_arr.each_cons(2).all? {|a,b| (b-a).between?(1,3)}
          increment_count += 1 if valid
      end
    end
    # puts "Increment Count: #{increment_count}"
    increment_count
    # binding.pry
  end

  def increment(arr)
    arr.each_cons(2).with_index do | (a, b),i |
      if (b-a) == 0 || (b-a) < 1 || (b-a) > 3
        arr.delete_at(i)
        break
      end
    end
    # binding.pry
    arr
  end

  def method_valid_decre
    decrement_count=0
    cleaned_decrement_arr = []
    @input_arr.each_with_index do |line,i|
      if @incre_decre_none[i] == "decrement"
        # binding.pry
        valid =decrement(line).each_cons(2).all? {|a,b| (a-b).between?(1,3)}
        decrement_count += 1 if valid
      end
    end
    decrement_count
  end

  def decrement(arr)
    arr.each_cons(2).with_index do | (a, b),i |
      if (a-b) == 0 || (a-b) < 1 || (a-b) > 3
        arr.delete_at(i)
        return arr
      end
    end
  end

  def count_sum
    method_valid_decre + method_valid_incre
  end

  def call
    method_to_split
    check_incre_decre
    p count_sum
  end
end

day2 = Day2_a.new($x)
day2.call
