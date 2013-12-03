# Answer These Questions:

# - What are essential classes?
# - What attributes will each class have?
# - What interface will each class provide?
# - How will the classes interact with each other?
# - Which classes will inherit from others, if any?


# Your code here



class Oven

  attr_accessor :timer

  def initialize
    $timer = 0
    @has_cookies = false
  end

  def start_baking
    @has_cookies = true
  end

  def stop_baking
    @has_cookies = false
  end

  def wait
    $timer += 10
  end


end



class Cookies
  attr_reader :is_tasty, :flour, :status

  def initialize
    @is_tasty = true
    @flour = true
    @burned = false
    @ready = false
    @almost_ready = false
  end


end

class PeanutButter < Cookies

  attr_reader :cooking_time, :almost_ready

  def initialize
    @cooking_time = 15
  end

  def almost_ready
    if $timer == 10
      # @almost_ready = true
      true
    end
  end


end



class ChocolateChip < Cookies
  attr_reader :cooking_time, :almost_ready, :burned
  def initialize
    super
    @cooking_time = 20
  end

  def almost_ready
    $timer == 15 ? true : false
  end

  def ready
    $timer == @cooking_time ? true : false
  end

  def burned
    $timer > @cooking_time ? true : false
  end
end



oven = Oven.new
cookies = ChocolateChip.new

p cookies

# p baker.make_cookies 5
# p baker.put_in_oven
# p baker.remove_from_oven


p oven.start_baking
p oven.wait
p oven.wait
p oven.wait
p oven.wait
p oven.stop_baking

p cookies.is_tasty
p cookies.almost_ready
p cookies.ready
p cookies.burned









