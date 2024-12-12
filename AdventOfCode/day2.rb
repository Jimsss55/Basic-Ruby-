# require_relative './day2_input'

#   Iterate over each line and check whether each element follows the rule
# The levels are either all increasing or all decreasing.
# Any two adjacent levels differ by at least one and at most three.

require 'pry'
class Day2_a
  attr_accessor :input, :input_arr, :incre_decre_none,:count
  def initialize(input)
    @input = input
    @input_arr= []
    @incre_decre_none =[]
    @count = 0
  end

  def method_to_split
    input.each_line do |line|
      next if line.strip.empty?
      @input_arr << line.split.map(&:to_i)
    end
    @input_arr
  end

  def check_incre_decre
    @incre_decre_none=@input_arr.map do |line|
      if line.each_cons(2).all? {|a,b| a>b}
        "decrement"
      elsif line.each_cons(2).all? {|a,b| a<b}
        "increment"
      else
        "none"
      end
    end
  end

  def method_valid_incre
    @input_arr.each_with_index do |line,i|
      if @incre_decre_none[i] == "increment"
        valid=line.each_cons(2).all? {|a,b| (b-a).between?(1,3)}
        @count+=1 if valid
      end
    end
    @count
  end

  def method_valid_decre
    @input_arr.each_with_index do |line,i|
      if @incre_decre_none[i] == "decrement"
        valid=line.each_cons(2).all? {|a,b| (a-b).between?(1,3)}
        @count+=1 if valid
      end
    end
    @count
  end

  def method_to_sum
    p method_valid_decre
  end

  def call
    method_to_split
    check_incre_decre
    method_valid_incre
    method_valid_decre
    method_to_sum
  end
end


