# This is how you define your own custom exception classes
class NoOrangesError < StandardError
end
 
class OrangeTree
  attr_accessor :age, :oranges, :height, :dead

  def initialize
    @age = 0
    @oranges = []
    @height = 0
  end

  # Ages the tree one year
  def age!
    @age += 1
    grow!
  end
 
 def grow!
  @height +=1
  if @age >= 5
    (rand(5..100)).times do |grow_fruit|
      @oranges << Orange.new
    end
  end
 end

 def dead?
  true if @age > 30
 end

  # Returns +true+ if there are any oranges on the tree, +false+ otherwise
  def any_oranges?
    @oranges.count > 0 ? true : false
  end
 
  # Returns an Orange if there are any
  # Raises a NoOrangesError otherwise
  def pick_an_orange!
    raise NoOrangesError, "This tree has no oranges" unless self.any_oranges?
    # orange-picking logic goes here
    @oranges.pop
  end
end
 
class Orange
  attr_accessor :diameter
  # Initializes a new Orange with diameter +diameter+
  def initialize
    @diameter = rand(9)
  end

end


#driver code
tree = OrangeTree.new

tree.age! until tree.any_oranges?

puts "Tree is #{tree.age} years old and #{tree.height} feet tall"

until tree.dead?
  basket = []
 
  # It places the oranges in the basket
  # IT PLACES THE ORANGES IN THE BASKET
  while tree.any_oranges?
    basket << tree.pick_an_orange!
  end

  if basket.count > 0  #run a loop to extract diameter data from orange object
    basket.map! {|calculate| calculate.diameter}
    avg_diameter = basket.reduce(:+)/basket.count
  else
    avg_diameter = 0
  end

  puts "Year #{tree.age} Report"
  puts "Tree height: #{tree.height} feet"
  puts "Harvest:     #{basket.size} oranges with an average diameter of #{avg_diameter} inches"
  puts ""

  #Age the tree another year
  tree.age!

end

puts "Alas, the tree, she is dead!"
