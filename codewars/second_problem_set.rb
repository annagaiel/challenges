=begin

Second Problem Set

6. Remove Duplicates
7. Color Ghost
8. Arithmatic Sequence
9. Sentence Smash!
10. 2 + 2 * 2

=end

#6. Remove Duplicates
def unique(integers)
   if integers.empty?
    integers 
  else
    arr = []
    integers.each do |num|
  	  arr.push(num) unless arr.include?num         
    end
    arr
  end
end

#7. Color Ghost
class Ghost
  attr_accessor :color
  
  def initialize
    @color = getColor()
  end
  
  def getColor
    ["yellow", "purple", "red", "white"].shuffle.sample
  end
end

#8. Arithmatic Sequence
def nthterm(first,n,c)
  first + (n * c)
end

#9. Sentence Smash!
def smash(words)
 words.join(" ")
end

#10. 2 + 2 * 2
def calculate
  (2 + 2) * 2
end