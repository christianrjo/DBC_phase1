# Implement an iterative version of the factorial function
#require 'debugger'

 def factorial_iterative(n)
    sum =1
    n.downto(1) {|x| sum *= x }
    puts sum

end



def factorial_recursive(n)
  if n == 0
    1
  else
  n * factorial_recursive(n - 1)
  end
end

 factorial_iterative(4)
 puts factorial_recursive(4)

