=begin

Third Problem Set

11. Grader
12. Sum Array
13. Convert boolean values to strings 'Yes' or 'No'.
14. Sleigh Authentication
15. Convert a Number to a String

=end

#11. Grader
def grader(score)
  if score > 1 || score < 0.6 
    "F"
  elsif score >= 0.9 
    "A"
  elsif score >= 0.8
    "B"
  elsif score >= 0.7
    "C"
  elsif score >= 0.6
    "D"
  end
end

#12. Sum Array
def sum(numbers)
 if numbers == []
  0
 else
  numbers.inject(0){|sum, number| sum + number}
 end
end

#13. Convert boolean values to strings 'Yes' or 'No'.
def bool_to_word bool
  if bool == "true"
    "Yes"
  else
    "No"
  end
end

#14. Sleigh Authentication
class Sleigh
  def authenticate(name, password)
    if name == "Santa Claus" && password == "Ho Ho Ho!"
      true
    else
      false
    end
  end
end

#15. Convert a Number to a String
def numberToString(num)
  "#{num}"
end