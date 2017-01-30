class RailSidingPosition
  attr_accessor :number, :car

  def initialize(number, car)
    @number = number
    @car = car
  end

  def arrived_at(before=DateTime.current)
    car && car.arrived_at(before)
  end
end
