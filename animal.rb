class Animal
	def eat
		puts "nom nom nom"
	end
end

class Dog < Animal
	def bark
		puts "woof"
	end
end

class GoldenRetriever < Dog
	def fetch
		puts "running and getting it"
	end
end

class Poodle < Dog

end

class Cat < Animal
	def meow
		puts "meow"
	end
end

class Duck < Animal
	def quack
		puts "quack"
	end
end

animal = Animal.new
dog 	= Dog.new
cat 	= Cat.new
duck 	= Duck.new
gr 		= GoldenRetriever.new
p 		= Poodle.new


puts animal.is_a?(Animal)