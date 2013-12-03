# TODO: Refactor for elegance
def shout_backwards(string)
  string.upcase.reverse + "!!!"
end
 
 
# FIXME: This is convoluted. Refactor for clarity.
def squared_primes(array)
  primes = array.select{|x| (2..x-1).select{|i| x % i == 0 }.length == 0 }
  primes.map { |x| x**2 }
end


# Driver code... don't edit. This should print a bunch of trues.
puts shout_backwards("hello, boot") == "TOOB ,OLLEH!!!"
puts squared_primes([1, 3, 4, 7, 42]) == [1, 9, 49]