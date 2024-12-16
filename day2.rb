# frozen_string_literal: true

#   Iterate over each line and check whether each element follows the rule
# The levels are either all increasing or all decreasing.
# Any two adjacent levels differ by at least one and at most three.

require 'pry'
class Day2_a
  attr_accessor :input, :input_arr, :incre_decre_none, :count

  def initialize(input)
    @input = input
    @input_arr = []
    @incre_decre_none = []
  end

  def method_to_split
    input.each_line do |line|
      next if line.strip.empty?

      @input_arr << line.split.map(&:to_i)
    end
    @input_arr
  end

  def check_incre_decre
    @incre_decre_none = @input_arr.map do |line|
      if line.each_cons(2).all? { |a, b| a > b }
        'decrement'
      elsif line.each_cons(2).all? { |a, b| a < b }
        'increment'
      else
        'none'
      end
    end
  end

  def method_valid_incre
    incre_count = 0
    @input_arr.each_with_index do |line, i|
      if @incre_decre_none[i] == 'increment'
        valid = line.each_cons(2).all? { |a, b| (b - a).between?(1, 3) }
        incre_count += 1 if valid
      end
    end
    incre_count
  end

  def method_valid_decre

    decre_count = 0
    @input_arr.each_with_index do |line, i|
      if decrease?(@incre_decre_none[i])
        decre_count += 1 if safe_increment?(line)
      end
    end
    decre_count
  end

  def method_to_sum
    method_valid_decre + method_valid_incre
  end

  def decrease?(str)
    str == 'decrement'
  end

  def safe_increment?(arr)
    arr.each_cons(2).all? { |a, b| (a - b).between?(1, 3) }
  end

  def call
    method_to_split
    check_incre_decre
    method_to_sum
  end
end

#Day 2_b