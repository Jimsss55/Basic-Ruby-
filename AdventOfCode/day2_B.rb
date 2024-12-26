require_relative 'day2_input'
require 'pry'

class Day2_B

  attr_reader :input, :input_arr, :final_arr, :safe_arr

  def initialize(input)
    @input = input
    @input_arr = []
    @final_arr = []
    @safe_arr = []
  end

  def split_into_arrays
    $x.each_line do |line|
      next if line.strip.empty?
      @input_arr << line.split.map(&:to_i)
    end
    @input_arr
  end

  def compare_consecutive_element
    @input_arr.each do |arr|
      index = 0
      while index < arr.size-1
        a, b = arr[index], arr[index+1]

        if a< b #increment
          if !subtract_increment(a,b,arr,index)
            next
          end
        else #Decrement
          if !subtract_decrement(a,b,arr,index)
            next
          end
        end
        index += 1
      end
    end
  end

  def subtract_increment(first_element, second_element, arr,index)
  #   Check if the submission is less than 3 or greater than 1
    submission = second_element - first_element
    if submission <= 3 && submission >= 1
      true
    else
      arr.delete_at(index+1)
      true
    end
  end

  def subtract_decrement(first_element, second_element, arr, index)
    submission = first_element - second_element
    if submission <= 3 && submission >= 1
      true
    else
      arr.delete_at(index)
      true
    end
  end

  def safe_unsafe_count
    safe_count = 0
    @input_arr.each do |arr|
      all_valid = arr.each_cons(2).all? do |a,b|
        (a-b).abs >=1 && (a-b).abs <=3
      end
      safe_count += 1 if all_valid
      end
    safe_count
    end

  def call
    split_into_arrays
    compare_consecutive_element
    p safe_unsafe_count
  end
end

day2 = Day2_B.new($x)
day2.call