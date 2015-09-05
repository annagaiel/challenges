=begin

Sixth Problem Set

27. Ruby Person Class Bug
28. No oddities here
29. Greet Me
30. Digitize Warning: This one is tricky
31. Square(n) Sum
32. Reversed Words

=end

#27. Ruby Person Class Bug
class Person
  def initialize(firstName, lastName, age)
    @firstName = firstName
    @lastName = lastName
    @age = age
  end
  
  def full_name
    "#{@firstName} #{@lastName}"
  end
end

#28. No oddities here
def no_odds( values )
  # Return only non-odd values
   @num = []
  values.each do |item|
   @num << item if item % 2 == 0
  end
   @num
end

#29. Greet Me
def greet(name)
 "Hello #{name.downcase.capitalize}!"
end

#30. Digitize Warning: This one is tricky
def digitize(n)
 @result = n.to_s.scan(/./).map{ |s| s.to_i }  
end

#31. Square(n) Sum
def squareSum(numbers)
  numbers.inject(0) { |sum, value| sum + (value*value)}
end

#32. Reversed Words
def solution(sentence)
  sentence.split(" ").reverse.join(" ")
end