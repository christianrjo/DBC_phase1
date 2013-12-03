def shuffle(array)
  shuffled = []
  1.upto(array.size) do
    shuffled << array.sample
  end

  shuffled
end
 
 
sorted_array = (1..10).to_a
 
# This should print a different sequence of numbers each time
p shuffle(sorted_array)
p shuffle(sorted_array)
p shuffle(sorted_array)

