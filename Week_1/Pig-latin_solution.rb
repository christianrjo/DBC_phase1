# Solution for Challenge: Pig-latin. Started 2013-08-06T16:59:49+00:00
def pig_latin
 word = gets.chomp
 return word if word =~ /^[aeiou]/
 word.partition(/^[^aeiou]*/).reverse.join + "ay"
end


def pig_latin_sentence
  print "Please enter a sentence >> "
  string = gets.chomp
  sentence = string.split
  count = 0
  pig_latin_sentence = []
  sentence.each do |wrd|
    if wrd =~ /^[aeiou]/
       pig_latin_sentence<< wrd
    else
      pig_latin_sentence << wrd.partition(/^[^aeiou]*/).reverse.join + "ay"
      count += 1
    end
  end
  puts pig_latin_sentence.join(' ')
  puts "The amount of words converted to pig latin was: #{count}"
end


pig_latin_sentence
