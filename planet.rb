require_relative 'body'

class Planet < Body

  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end

  def self.all
    planets = []
    System.all.each {|body| planets << body if body.is_a?(Planet)}
    planets
  end

end
class Star < Body

  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end

end
class Moon < Body

  def initialize(name, mass, month)
    super(name, mass)
    @month = month
  end
end
