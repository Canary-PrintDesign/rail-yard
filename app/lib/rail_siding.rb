class RailSiding
  attr_accessor :time

  POSITION_COUNT = 6

  def initialize(time)
    @time = time
  end

  def cars
    @cars ||= Railcar.in_yard
  end

  def positions
    @positions ||= POSITION_COUNT.times.map do |i|
      car = cars.find{ |car| car.position == i }
      RailSidingPosition.new(i, car)
    end
  end
end
