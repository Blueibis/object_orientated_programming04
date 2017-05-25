require_relative 'body'
require_relative 'planet'

class System
@@bodies = []

  def add(body)
    @@bodies << body
  end

  def total_mass
    sum = 0
    @@bodies.each {|body| sum += body.mass}
    "The total mass of the bodys in our system is #{sum} kg"
  end

  def self.all
    @@bodies
  end

  def self.total_mass
    sum = 0
    Body.all.each {|body| sum += body.mass}
    "The total mass of all bodys created is #{sum} kg"
  end
end

solar = System.new
sun = Star.new("Our Sun", 9875, "yellow dwarf")
earth = Planet.new("Earth", 113, 1, 365)
moon = Moon.new("Our Moon", 8, 30)
mars = Planet.new("Mars", 346, 50, 468)
solar.add(sun)
solar.add(earth)
solar.add(moon)
puts System.all.inspect
puts solar.total_mass
puts Planet.all
puts System.total_mass
