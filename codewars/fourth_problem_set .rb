=begin

Fourth Problem Set

16. Welcome to the City
17. Basic Variable Assignment
18. Get Planet Name By ID Hint: Syntax is Wrong. Look at how the switch syntax should work here
19. Basic Training: Add item to an Array
20. Short Long Short

=end

#16. Welcome to the City
def say_hello(name, city, state)
  "Hello, #{name.join(" ")}! Welcome to #{city}, #{state}!"
end

#17. Basic Variable Assignment
a = "code"
b = "wa.rs"
name = a + b

#18. Get Planet Name By ID Hint: Syntax is Wrong. Look at how the switch syntax should work here
def get_planet_name(id)
  if id == 1 
    "Mercury"
  elsif id == 2
    "Venus"
  elsif id == 3
    "Earth"
  elsif id == 4
    "Mars"
  elsif id == 5
    "Jupiter"
  elsif id == 6
    "Saturn"
  elsif id == 7  
    "Uranus"
  else id == 8
    "Neptune"
  end
end

#19. Basic Training: Add item to an Array
websites.push("codewars")


#20. Short Long Short
def solution(a, b)
  if a.length > b.length
    "#{b}#{a}#{b}"
  else
    "#{a}#{b}#{a}"
  end
end