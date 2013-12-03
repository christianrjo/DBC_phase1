
def linear_search(target, random_numbers)
  index = 0
  while random_numbers[index]
    return index if target == random_numbers[index]
    index += 1
    # break if index == 20
  end
  nil
end




# def linear_search(target, random_numbers)
#   index = 0
#   loop do 
#   return index if target == random_numbers[index]
#   return nil  if random_numbers[index] = nil
#       index +=1
#   end 
# end



random_numbers = [ 6, 29, 18, 2, 72, 19, 18, 10, 37 ]

p linear_search(600, random_numbers)
