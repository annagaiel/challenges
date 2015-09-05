=begin

Fifth Problem Set

21. Function 1 - hello world
22. Function 2 - squaring an argument
23. Function 3 - multiplying two numbers
24. Push a hash/an object into array
25. Refactored Greeting
26. Statistics Algorithm - Calculate Mean

=end

#21. Function 1 - hello world
def greet
 "hello world!"
end

#22. Function 2 - squaring an argument
def square(num)
 num*num
end

#23. Function 3 - multiplying two numbers
def multiply(a, b)
 a*b
end

#24. Push a hash/an object into array
items = Array.new
items.push({:a => "b", :c => "d"})

#25. Refactored Greeting
class Person 
  attr_accessor :name
 
 def initialize(name)
   @name = name
 end

 def greet(yourName)
  "Hello #{yourName}, my name is #{@name}"
 end

end

#26. Statistics Algorithm - Calculate Mean
def calc_mean(ary)
  if !ary.is_a?(Array)
    0
  elsif ary.empty?
    0
  else
    ary.inject(0){|sum, value| sum + value}/ary.size 
  end
end