class Person

  	attr_accessor :name, :age 

	#instance variables
	def initialize(n, a)
		@name = n
		@age = a
	end

end

class Lover < Person

	#instance methods
	def shows_love
	  "kisses you on the lips"
    end

    def acts_sweet
      "gives you a back hug"
    end
end

class Friend < Person
	#instance methods
	def shows_love
	  "kisses you on the cheeks"
    end

    def acts_sweet
      "gives you a bear hug"
    end
end

class Admirer < Person
	#instance methods
	def shows_love
	  "smiles at you longingly"
    end

    def acts_sweet
      "leaves you love notes as anonymous"
    end
end

lover = Lover.new("Mary Ann", 25)
friend = Friend.new("Aaron", 26)
admirer = Admirer.new("Francis", 27)

puts "You met your friend #{friend.name} and he #{friend.acts_sweet}."
puts "Your lover #{lover.name} #{lover.acts_sweet} after your date ends." 
puts "You say goodbye to your lover and she #{lover.shows_love}."
puts "You saw your admirer #{admirer.name} and he #{admirer.shows_love}." 
puts "#{admirer.name} invited you to his #{admirer.age+1}th birthday party."


