class Student
  attr_reader :scores, :first_name

  def initialize(first_name, scores)   #Use named arguments!
    #your code here
    @first_name = first_name
    @scores = scores
  end


  def average
    @scores.reduce(:+)/ @scores.size
  end

  def letter_grade
    case average
    when 90..100
      'A'
    when 80..89
      'B'
    when 70..79
      'C'
    when 60..69
      'D'
    else
      'F'
    end
  end

end

 students = [Student.new('Alex', [100, 100, 100, 0, 100]),
                Student.new('Christian', [97, 65,100,78]),
                Student.new('Robert', [78, 98, 63, 45]),
                Student.new('Brick', [90,87, 78,90]),
                Student.new('Tanner', [90, 98, 100, 100])
                ]


  def linear_search(students, first_name)
    index = 0
  	while students[index]
  		return index if first_name == students[index].first_name
  		index += 1
  	end
  	-1
  end


# random_numbers = [ 6, 29, 18, 2, 72, 19, 18, 10, 37 ]

# p linear_search(600, random_numbers)
## ADD YOUR CODE HERE and IN THE CLASS ABOVE

#1. Create an array of 5 Students each with 5 test scores between 0 and 100.
# The first Student should be named "Alex" with scores [100,100,100,0,100]


#2. Add average and letter_grade methods to the Student class.


#3. Write a linear_search method that searches the student array for a student name
# and returns the position of that student if they are in the array.




#===========DRIVER CODE : DO NOT MODIFY =======

#Make sure these tests pass
# Tests for part 1:

# p students[0].first_name == "Alex"
# p students[0].scores.length == 5
# p students[0].scores[0] == students[0].scores[4]
# p students[0].scores[3] == 0


# # Tests for part 2
 p students[0].average == 80
p students[0].letter_grade == 'B'

# # Tests for part 3

p linear_search(students, "Alex") == 0
 p linear_search(students, "NOT A STUDENT") == -1
