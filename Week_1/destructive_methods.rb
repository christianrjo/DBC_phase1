def destroy_message(string)
 match = string =~ /:/
 match ? string[0..match] : string 
end
 
def destroy_message!(string)
  return string unless string =~ /:/
  match = string =~ /:/
  keep_string = string[0..match]
  string.clear
  string << keep_string
end
 
# Driver code... 
string = "this message will self-destruct: you can't hug every cat"
original_string = string.dup
puts destroy_message(string) == "this message will self-destruct:"
puts string == original_string # we shouldn't modify the string passed to destroy_message
 
string = "this has no message"
original_string = string.dup
puts destroy_message(string) == string
puts string == original_string # we shouldn't modify the string passed to destroy_message
 
string = "this message will self-destruct: you can't hug every cat"
original_string = string.dup
destroy_message!(string)
puts string == "this message will self-destruct:"
puts string != original_string
 
string = "this has no message"
result = destroy_message!(string)
puts result.nil?
puts string == string
