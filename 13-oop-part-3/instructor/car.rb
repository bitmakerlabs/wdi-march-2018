class Car

  @@default_colour = 'blue'

  def self.default_colour
    @@default_colour
  end

  def self.default_colour=(default_colour)
    @@default_colour = default_colour
  end

  def initialize(owner)
    @owner = owner
    @colour = @@default_colour
  end

  def colour
    @colour
  end

  def colour=(colour)
    @colour = colour
  end

  def honk
    'Beep'
  end

end

freds_car = Car.new('Fred')

seans_car = Car.new('Sean')
seans_car.colour = 'blue'

freds_car.honk # --> 'Beep'
