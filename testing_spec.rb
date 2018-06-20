require 'rspec'
require_relative 'testing'

describe "Car" do

  it "has to be real" do
    expect{Vehicle.new}.to_not raise_error
  end

  it "has 4 wheels" do
    a_car = Car.new
    expect(a_car.wheels).to eq 4
  end

  it "has a horn" do
    a_car = Car.new
    expect(a_car.honk_horn).to eq "BEEP!"
  end

  it "has a model year" do
    a_car = Car.new
    expect(a_car.model_year).to be_a String
  end

  it "has lights" do
    a_car = Car.new
    expect{a_car.lights}.to_not raise_error
end

  it "has lights that can turn on and off" do
    a_car = Car.new
    expect(a_car.lights).to eq "off"
    expect(a_car.light_switch).to eq "on"
    expect(a_car.light_switch).to eq "off"
  end
end

describe "Toyota" do

  it "inherits wheels class car" do
    a_toyota = Toyota.new
    expect{a_toyota.wheels}.to_not raise_error
  end

  it "inherits horn from class car" do
    a_toyota = Toyota.new
    expect{a_toyota.horn}.to_not raise_error
  end

  it "makes the sound whoop" do
    a_toyota = Toyota.new(4, "whoop")
    expect(a_toyota.horn).to eq "whoop"
  end

end

describe "Tata" do

  it "has to be real" do
    expect{Tata.new}.to_not raise_error
  end

  it "makes the sound beep" do
    a_tata = Tata.new
    expect(a_tata.horn).to eq "beep"
  end

end

describe "Tesla" do

  it "has to be real" do
    expect{Tesla.new}.to_not raise_error
  end

  it "makes the sound Beep-bee-bee-boop-bee-doo-weep" do
    a_tesla = Tesla.new
    expect(a_tesla.horn).to eq "Beep-bee-bee-boop-bee-doo-weep"
  end

end
