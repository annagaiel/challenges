=begin
	
First Problem Set

1. Multiply
2. Odd or Even
3. Double the Integer
4. Regular Ball/Super Ball
5. Broken Greetings

=end

#1. Multiply
function multiply(a, b){
 return a * b
}

#2. Odd or Even
def even_or_odd(number)
  if number.even?
    return "Even"
  else
    return "Odd"
  end
end

#3. Double the Integer
def doubleInteger(i)
	i*2
end

#4. Regular Ball/Super Ball
class Ball
  def initialize(type = 'regular')
    @type = type
  end

  def ball_type
     return @type
  end
end

#5. Broken Greetings
function Person(name){
  this.name = name;
}

Person.prototype.greet = function(otherName){
  return "Hi " + otherName + ", my name is " + this.name;
}