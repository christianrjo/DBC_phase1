def dictionary_sort
  arr = []
  puts "Type a word:"

while true
  word = gets.chomp!
  
  if word == ""
    break
  else 
    puts "Type another word (or press enter to finish)"
    arr << word
  end
end

  puts "Congratulations! Your dictionary has #{arr.length} words:"
  puts arr.sort

end
 
dictionary_sort