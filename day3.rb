require_relative 'day3_input'
require 'pry'

class Day3_a
  attr_accessor :input_str, :extracted_num_arr, :mul_enabled

  def initialize(input_str)
    @input_str = input_str
    @extracted_num_arr = []
    @mul_enabled = true
  end

  # def split_string
  #   @extracted_num_arr= @input_str.scan(/mul\((\d+),(\d+)\)/)
  # end

  # Day3b
  def split_string
    total = 0
    @input_str.scan(/(do\(\))|(dont\(\))|mul\((\d+),(\d+)\)/) do |do_match, dont_match, num1, num2|
      if do_match
        @mul_enabled = true
      elsif dont_match
        @mul_enabled = false
      elsif @mul_enabled && num1 && num2
        total += num1.to_i*num2.to_i
      end
    end
    total
  end

  def multiply_each_arr
    product = 0
    @extracted_num_arr.each do |arr|
      element1 = arr[0].to_i
      element2 = arr[1].to_i
      product += (element1 * element2)
    end
    product
  end

  def call
    split_string
    # multiply_each_arr
  end
end

day3_a = Day3_a.new($x)
puts day3_a.call