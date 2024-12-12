def calculate_grocery_total(str)
  str.scan(/\$\d+\.\d+/).map{ |price| price.gsub("$","").to_f}.sum
end 

p calculate_grocery_total ("I purchased 4 apples for $9.99, 3 boxes of strawberries for $19.99, and one box of cereal for $5.49.")
