class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start
    @start = true
  end
end

class Car < Vehicle
  attr_accessor :model, :year
  @@count = 0

  def initialize(model, year)
    super
    @@count += 1
  end

  def self.instancias
    return @@count
  end

  def engine_start
    super
    puts 'El motor se ha encendido!.'
  end
end

10.times do
  car = Car.new('Ford', 2015)
  puts "Creamos #{car}"
  car.engine_start
end

puts "Total de instancias creadas #{Car.instancias}"
