class Driver

  def car_routine
    prep_drive
    if day == 'Saturday' || day == 'Sunday'
      drive_to_beach
    else
      drive_to_work
    end
  end

  def prep_drive
    put_on(@seatbelt)
    @car.start
  end
















# This code just here to make the method above function
  def initialize
    @car = Car.new
  end
  def day
    ['Saturday', 'Sunday'].sample
  end
  def put_on(thing)
  end
  def drive_to_beach
  end
  def drive_to_work
  end
end

class Car
  def start
  end
end
