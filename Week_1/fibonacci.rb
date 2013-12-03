def fibonacci_iterative(n)
  fib_array = [0,1]
  
  if n == 0
    0
  elsif n == 1
    1
  else
    (n-1).times do 
      fib_array << (fib_array[-1] + fib_array[-2])
    end 
    fib_array.last
  end
end 
def fibonacci_recursive(n)
end
def fibonacci_recursive(n)
 
 if n == 0
    0
  elsif n == 1
    1 
  else
   fibonacci_recursive(n-1) + fibonacci_recursive(n-2)

  end 
end

puts fibonacci_iterative(7)
puts fibonacci_recursive(7)
