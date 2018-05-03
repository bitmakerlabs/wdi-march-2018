def work_out
  jogging
  running
  walking
end

def jogging
  treadmill.pace = :jogging
  treadmill.set_time(5)
  treadmill.start
  treadmill.stop
end

def running
  treadmill.pace = :running
  treadmill.set_time(40)
  treadmill.start
  treadmill.stop
end

def walking
  treadmill.pace = :walking
  treadmill.set_time(5)
  treadmill.start
  treadmill.stop
end

def treadmill
  Treadmill.first_available
end










































# Just here to make the above method work....
class Treadmill
  def self.first_available
  end
  def pace=(pace)
  end
  def set_time(time)
  end
  def start
  end
  def stop
  end
end
