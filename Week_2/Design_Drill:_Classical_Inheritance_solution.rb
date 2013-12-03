module SuperPowers
  attr_writer :magic_points

  def magic_points
    self.magic_points = @magic_points || 100
  end

  def use_laser_vision
    self.magic_points -= 5
    "fire in the hole"
  end
end


class Animal
  attr_reader :breathe

  def initialize
    @breathe = 'breathe'
    @speak = 'speak'
    @num_legs = 'num_legs'
  end


end

class Mammal < Animal
  attr_reader :warm_blooded

  def initialize
     @warm_blooded = true
  end
end

class Amphibian < Animal
end

class Primate < Mammal

end

class Frog < Amphibian
  include SuperPowers
end

class Bat < Mammal
end

class Chimpanzee < Primate
end


new = Mammal.new

p new.warm_blooded

curious_george = Chimpanzee.new
p curious_george.warm_blooded


kermit = Frog.new
p kermit.magic_points
p kermit.use_laser_vision
p kermit.breathe

