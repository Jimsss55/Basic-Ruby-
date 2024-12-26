require 'pry'
class Day4_a

  attr_accessor :input_str, :split_into_char_arr, :directions, :rows, :cols, :word, :word_length

  def initialize(input_str)
    @input_str = input_str
    @split_into_char_arr = []
    # @split_into_char_arr = split_into_char_arrays(input_str)
    @word = "XMAS"
    @word_length = @word.length
    @rows = 0
    @cols = 0
  end

  def split_into_char_arrays
    @split_into_char_arr = @input_str.split.map{ |word| word.chars}
  end

  def count_valid_east_position
    count_east = 0
    @split_into_char_arr.each do |char_arr|
      joined_string = char_arr.join

      if joined_string.include?(@word)
        count_east += 1
      end
    end
    count_east
  end

  def count_valid_west_position
    count_west = 0
    @split_into_char_arr.each do |char_arr|
      joined_string = char_arr.join

      if joined_string.include?(@word.reverse)
        count_west += 1
      end
    end
    count_west
  end

  def count_valid_north_position
    count_north = 0

    columns = @split_into_char_arr.transpose
    columns.each do |column|
      joined_string = column.join

      if joined_string.include?(@word)
        count_north += 1
      end
    end
    count_north
  end

  def count_valid_south_position
    count_south = 0

    columns = @split_into_char_arr.transpose
    columns.each do |column|
      joined_string = column.join

      if joined_string.include?(@word.reverse)
        count_south += 1
      end
    end
    count_south
  end

  def count_valid_north_west_position(array, word, word_length)
    diagonal = ""
    @rows = @split_into_char_arr.length
    @cols = @split_into_char_arr[0].length

    while @rows >= 0 && @cols >= 0
      diagonal += array[@rows , @cols]
      row -= 1
      col -= 1
      binding.pry
    end
  end


  def call
    split_into_char_arrays
    count_valid_east_position
    count_valid_north_west_position(@split_into_char_arr, @word, @word_length)
  end
end

day4_a = Day4_a.new("MMMSXXMASM\nMSAMXMSMSA\nAMXSXMAAMM\nMSAMASMSMX\nXMASAMXAMM\nXXAMMXXAMA\nSMSMSASXSS\nSAXAMASAAA\n
        MAMMMXMMMM\nMXMXAXMASX")
day4_a.call
