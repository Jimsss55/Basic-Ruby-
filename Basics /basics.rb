# puts "Hello"

def money_printer(num1)
  num1.times {print "Money"}
end

# money_printer(10)
def increments_of_two
  5.times {|count| print count*2}
end

# increments_of_two

def numeric_energy(num)
  if num >0
    "Positive"
  elsif num<0
     "Negative"
  else
    puts "Zero Hero"
  end
end
# numeric_energy(0)

def divisible_by_three_and_four(num)
  if num%3==0 && num%4==0
     true
  else
     false
  end
end

# p divisible_by_three_and_four(24)

def pastas_and_sauces(pastas, sauces)
  arr = []
  pastas.each do |pasta|
    sauces.each do |sauce|
      comb= "#{pasta.capitalize} with #{sauce.capitalize} sauce"
      arr << comb
    end
    p arr
  end
end

pastas_and_sauces(%w[fettucine spaghetti penne], %w[alfredo bolognese pesto])