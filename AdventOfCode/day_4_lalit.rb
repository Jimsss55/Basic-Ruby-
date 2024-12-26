require 'pry'
require_relative 'day4_input'
class AOCFour
  attr_accessor :word_search_array, :xmas_count, :size_of_word_array

  def initialize(word_search_text)
    @word_search_array = split_input_to_array(word_search_text)
    @xmas_count = 0
    @size_of_word_array = [@word_search_array.size, @word_search_array[0].size]
  end

  def split_input_to_array(input)
    input.split.map{ |word| word.chars}
  end

  def call
    word_search_array.each_with_index do |char_arr, i|
      char_arr.each_with_index do |char, j|
        if char == 'A'

          # Day 4 a
          # check_north_and_increment_count(i, j)
          # check_east_and_increment_count(i, j)
          # check_west_and_increment_count(i, j)
          # check_south_and_increment_count(i, j)
          # check_north_east_increment_count(i, j)
          # check_north_west_increment_count(i, j)
          # check_south_east_increment_count(i, j)
          # check_south_west_increment_count(i, j)

        #   Day 4 B
          check_north_west(i, j)
          check_plus(i, j)
        #   check_north_east(i, j)
        end
      end
    end
    puts xmas_count
  end

  def check_north_west(position_i, position_j)
    str = ""
    str += word_search_array[position_i][position_j]

    if position_i - 1 >= 0 && position_j - 1 >= 0
      position_i -= 1
      position_j -= 1

      char = word_search_array[position_i][position_j]
      if ["M", "S"].include?(char)
        str += char
        # binding.pry
        check_south_east(position_i, position_j, str)
      end
    end
  end

  def check_south_east(position_i, position_j, str)
    position_i += 2
    position_j += 2

    if position_i < (size_of_word_array[0]) && position_j < (size_of_word_array[1])
      char = word_search_array[position_i][position_j]
      str += char  if ["S", "M"].include?(char)
    end

    check_north_east(position_i,position_j) if %w[AMS ASM].include?(str)
  end

  def check_north_east(position_i, position_j)
    str = ""
    position_i -= 2

    if position_i >= 0 && position_j < (size_of_word_array[1])
      char = word_search_array[position_i][position_j]
      if ["S", "M"].include?(char)
        str += char
        check_south_west(position_i,position_j,str)
      end
    end
  end

  def check_south_west (position_i, position_j, str)
    position_i += 2
    position_j -= 2

    if position_i < (size_of_word_array[0]) && position_j >= 0
      char = word_search_array[position_i][position_j]
      str += char if ["M", "S"].include?(char)
    end
    if ["MS", "SM"].include?(str)
      @xmas_count += 1
    end
    @xmas_count
  end

  def check_plus(position_i, position_j)
    check_north_and_south(position_i, position_j)
  end

  def check_north_and_south(position_i, position_j)
    str = ""
    str += word_search_array[position_i][position_j]

    if (position_i - 1 >= 0) && (position_i + 1 < @size_of_word_array[0])
      char1 = @word_search_array [position_i - 1][position_j]
      char2 = @word_search_array [position_i + 1][position_j]
      str += char1 + char2
      check_east_and_west(position_i, position_j) if %w[AMS ASM].include?(str)
    end
  end

  def check_east_and_west(position_i, position_j)
    str = ""
    str += @word_search_array[position_i][position_j]

    if (position_j-1 >= 0) && (position_j + 1 < size_of_word_array[1])
      char1 = @word_search_array [position_i][position_j - 1]
      char2 = @word_search_array [position_i][position_j + 1]
      str += char1 + char2
      @xmas_count += 1 if %w[AMS ASM].include?(str)
    end
    @xmas_count
  end

  def check_north_and_increment_count(position_i, position_j)
    str = ""
    str += word_search_array[position_i][position_j]
    while position_i > 0
      position_i -= 1
      str += word_search_array[position_i][position_j]
      break if str.size > 3
    end
    @xmas_count += 1 if str == 'MAS'
  end

  def check_south_and_increment_count(position_i, position_j)
    str = ""
    str += word_search_array[position_i][position_j]
    while position_i < (size_of_word_array[0] - 1)
      position_i += 1
      str += word_search_array[position_i][position_j]
      break if str.size > 3
    end
    @xmas_count += 1 if str == 'MAS'
  end

  def check_east_and_increment_count(position_i, position_j)
    str = ""
    str += word_search_array[position_i][position_j]
    while position_j < (size_of_word_array[0] - 1)
      position_j += 1
      str += word_search_array[position_i][position_j]
      break if str.size > 3
    end
    @xmas_count += 1 if str == 'MAS'
  end

  def check_west_and_increment_count(position_i, position_j)
    str = ""
    str += word_search_array[position_i][position_j]
    while position_j > 0
      position_j -= 1
      str += word_search_array[position_i][position_j]
      break if str.size > 3
    end
    @xmas_count += 1 if str == 'MAS'
  end

  def check_north_east_increment_count(position_i, position_j)
    str = ""
    str += word_search_array[position_i][position_j]
    while position_i > 0 && position_j < (size_of_word_array[1]-1)
      position_i -= 1
      position_j += 1
      str+= word_search_array[position_i][position_j]
      break if str.size > 3
    end
    @xmas_count += 1 if str == 'MAS'
  end

  def check_north_west_increment_count(position_i, position_j)
    str = ""
    str += word_search_array[position_i][position_j]
    while position_i > 0 && position_j > 0
      position_i -= 1
      position_j -= 1
      str+= word_search_array[position_i][position_j]
      break if str.size > 3
    end
    @xmas_count+=1 if str == 'MAS'
  end

  def check_south_east_increment_count(position_i, position_j)
    str = ""
    str += word_search_array[position_i][position_j]
    while position_i < (size_of_word_array[0]-1) && position_j < (size_of_word_array[1]-1)
      position_i += 1
      position_j += 1
      str+= word_search_array[position_i][position_j]
      break if str.size > 3
    end
    @xmas_count+=1 if str == 'MAS'
  end

  def check_south_west_increment_count(position_i, position_j)
    str = ""
    str += word_search_array[position_i][position_j]
    while position_i < (size_of_word_array[0]-1) && position_j > 0
      position_i += 1
      position_j -= 1
      str+= word_search_array[position_i][position_j]
      break if str.size > 3
    end
    @xmas_count += 1 if str == 'MAS'
  end
end

day_four = AOCFour.new($x)
day_four.call
