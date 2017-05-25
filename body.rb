class Body
@@bodies = []
  attr_reader :name, :mass

  def initialize(name, mass)
  @name = name
  @mass = mass
  store
  end
  def store
    @@bodies << self
  end
  def self.all
    @@bodies
  end

end
