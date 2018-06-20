# Story: As a programmer, I can make a vehicle.
# Hint: Test that Vehicle.new does not raise any errors.
class Vehicle
end





# Story: As a programmer, I can make a car.
# Hint: Test that creating an instance of the new class does not raise any errors.
class Car

  attr_accessor :wheels, :horn, :lights
  attr_reader :model_year

  def initialize(wheels = 4, horn = "BEEP!", model_year = "2018", lights = "off")
    @wheels = wheels
    @horn = horn
    @model_year = model_year
    @lights = lights
  end

  def honk_horn
    @horn
  end

  def light_switch
    if @lights == "off"
      @lights = "on"
    else
      @lights = "off"
    end
  end

end

class Toyota < Car

  def initialize(wheels=4, horn="whoop")
    super(wheels, horn)
  end

  # def to_s
  #   super()
  # end

end

class Tata < Car

  def initialize(wheels = 4, horn = "beep")
    super(wheels, horn)
  end
end

class Tesla < Car

  def initialize(wheels = 4, horn = "Beep-bee-bee-boop-bee-doo-weep")
    super(wheels, horn)
  end
end
