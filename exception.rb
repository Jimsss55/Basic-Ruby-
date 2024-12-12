class WheelMissingError < StandardError
end

class InsufficientGasError < StandardError
end
class Truck
  attr_reader :wheels, :gallons_of_gas

  def initialize
    @wheels = 18
    @gallons_of_gas = 0
  end

  def lose_wheel
    @wheels -= 1
  end

  def fill_up_tank
    @gallons_of_gas += 20
  end

  def drive
    raise WheelMissingError, "Replace your wheel!" if wheels < 18
    raise InsufficientGasError, "Fill up your tank!" if @gallons_of_gas <= 0
    @gallons_of_gas -= 10
  end
end

truck = Truck.new
p truck.fill_up_tank
p truck.drive
p truck.drive
p truck.drive
# truck.fill_up_tank
# truck.lose_wheel
# truck.drive  -> Raises WheelMissingError