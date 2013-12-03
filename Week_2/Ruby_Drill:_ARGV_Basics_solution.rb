# Solution for Challenge: Ruby Drill: ARGV Basics. Started 2013-08-13T17:32:14+00:00
def pig_latin_sentence sentence
  # p "Type your sentence"
  # sentence = gets.chomp
  
  punctuation = sentence.scan(/\W/)
  words = sentence.split(/\W/)
  # p punctuation
  # p words
  answer = words.map! do |x|
     pig_latin x
  end
 
   answer.zip(punctuation).join("").downcase.capitalize
end
 

def pig_latin word
 
  results_array = Array.new
  counter = 0
  vowels = ["a","e","i","o","u"]
 
  if word.downcase[0] != ("a" || "e" || "i" || "o" || "u")
    split_word = word.split(//)
    split_word.each do |current_letter|
      if vowels.include?(current_letter)
          break
      else
         counter += 1
      end
    end
  else
    return word + "ay"
  end
  split_word.rotate(counter).join() + "ay"
end
 

p pig_latin_sentence ARGV.join(" ")

class RPNCalculator
 
  def initialize
    @inputs = []
  end
 
  def push(number)
    @inputs.push(number)
  end
 
  def plus
    @inputs.push(pop + pop)
  end
 
  def minus
    var1 =pop
    var2 =pop
    @inputs.push(var2 - var1)
  end
 
  def divide
    var1 =pop.to_f
    var2 = pop.to_f
    @inputs.push(var2/var1)
  end
 
  def times
    @inputs.push(pop*pop)
  end
  
  def value
    @inputs.last
  end
 
  def tokens(s)
    s.split(' ').map { |e| 
      begin
        Integer(e)
      rescue
        e.to_sym
      end
    }
  end
 
  def evaluate (input)
    tokens(input).each do |x|
      begin
        push(Integer(x))
        rescue  
        case x 
        when :+ 
          plus
        when :-
          minus
        when :*
          times
        when :/
          divide
        end
      end
    end
    value
  end
 
  private
  def pop
    val = @inputs.pop
    raise "calculator is empty" unless val
    val
  end
 
 
 
end
calc = RPNCalculator.new

 p calc.evaluate ARGV.join(' ')


