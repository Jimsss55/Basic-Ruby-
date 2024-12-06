# class Vehicle 
#   attr_reader :wheels, :passengers
#   def initialize(wheels, passengers)
#     @wheels = wheels
#     @passengers = passengers
#   end

#   def self.car
#     self.new(4,4)
#   end

#   def self.truck
#     self.new(16,3)
#   end
# end

# car = Vehicle.car 

# p car.wheels
# p car.passengers

# truck = Vehicle.truck
# p truck.wheels
# p truck.passengers
# 
# Exercise 

class SushiLunchOrder
  @@total_pieces=0
  attr_reader :salmon, :tuna, :yellowtail
  
  def initialize(salmon,tuna,yellowtail)
      @salmon = salmon
      @tuna = tuna
      @yellowtail = yellowtail
      @@total_pieces+=salmon+tuna+yellowtail
  end 
  
  class << self
      def salmon_special
        new(6,3,3)
      end 
      
      def family_combo
        new(12,12,12)
      end 
      
      def total_pieces
        new(3,4,5)
      end

      def total_pieces
        @@total_pieces
      end
  end 
end 

order1 = SushiLunchOrder.salmon_special
p order1.salmon
p order1.tuna
p order1.yellowtail