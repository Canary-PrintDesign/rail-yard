5.times.map do |i|
  railcar = Railcar.create({
    number: "PLOX 907#{i}",
    in_yard: true
  })
  CarMoveLogEntry.create({
    railcar: railcar,
    arriving: true,
    position: i
  })
  (6.hours.ago.to_i .. DateTime.current.to_i).step(1.hour) do |date|
    CarTempLogEntry.create({
      railcar: railcar,
      degrees: rand(200..300)
    }).update({created_at: DateTime.strptime(date.to_s, '%s')})
  end
end
