class Guessing_game
  VALID_NUMBERS = (1..100).to_a # Store valid answers in an array
 
  def initialize(answer) 
    @answer = answer
    @solved = false
# Validate input
    raise "Answer must be between 1 and 100" unless VALID_NUMBERS.include? @answer
  end
    
  def guess(number)
    if(number == @answer) # Check if the two are equal
      @solved = true
      :correct
    elsif(number > @answer) # Check if the guess is higher
      @solved = false
      :high
    elsif(number<@answer) # Check if the guess is lower
      @solved = false
      :low
    end
  end
    
  def solved?
    @solved
  end
end
 
game = Guessing_game.new(10)
 
# This following should print out a whole bunch of "true"
puts game.guess(5)  == :low
puts game.guess(15) == :high
puts game.solved?   == false
puts game.guess(10) == :correct
puts game.solved?   == true
puts game.guess(2)  == :low
puts game.solved?   == false
 
begin
  Guessing_game.new(200)
rescue RuntimeError => e
  puts e.to_s == "Answer must be between 1 and 100"
end