#.2.Problem: Alice is a programmer who is working on a project that involves
# creating a new class called Vehicle. The Vehicle class has several public
# methods, such as start_engine and stop_engine. Alice's colleague, Bob, is
# working on a subclass of Vehicle called Car. Car inherits all of the public
# methods from Vehicle, but Bob needs to add some new functionality to the
# start_engine method. How can Bob access the start_engine method in the
# Vehicle class so he can use it in his Car subclass?


class Vehicle
  def startEngine
    puts "Start engine"
  end
  def stopEngine
    puts "Stop engine"
  end
end

class Car < Vehicle
  def startEngine
    super
    puts "Race the car"
  end

end

car= Car.new
car.startEngine
