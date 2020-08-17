# Fig. 24.8: controlStatements.rb
# Conditionals, loops, and codeblocks.
def letter_grade( x ) # define method letterGrade 
   if x >= 90 # if x is greater than or equal to 90
      "A" # grade is A
   elsif x >= 80 # if x is greater than or equal to 80
      "B" # grade is B
   elsif x >= 70 # if x is greater than or equal to 70
      "C" # grade is C
   elsif x >= 60 # if x is greater than or equal to 60
      "D" # grade is D
   else # grade is less than 60
      "F" # grade is F
   end # if
end # method letterGrade

students = { "John" => 100, "Sue" => 92, "Tom" => 56, "Jill" => 80 }

students.each() { |key, value| # display the letter grade for each student
   puts "#{key} received a #{letter_grade(value)}"
} # end codeblock