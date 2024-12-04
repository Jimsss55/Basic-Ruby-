# It is a procedure collection of codes 

# 5.times {puts "Hello"}
# puts

# 3.times do 
#   puts "Hello learining Ruby"
#   puts "Day 1 of learning Ruby "
# end



# def print_five_times 
#   5.times {print "Hello"}
# end 

# print_five_times()

# def money_printer(num1)
#   num1.times {print "Money"}
# end 

# money_printer(5)

# Block variable 

3.times {|count| puts count}

3.times do |current_count|
  puts "This is count no : #{current_count}"
end

# print the multiple of 2 from (0246810)

6.times {|count| print count*2}

# upto and downto method 

6.upto(15) {|count| puts "#{count}"}
6.downto(1) {|count| puts "#{count}"}
puts

# Steps method 

2.step(100,5) {|count| puts count}