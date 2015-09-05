class Card
	attr_accessor :rank, :suit

	def initialize(rank, suit)
		@rank = rank
		@suit = suit
	end

	def output_card
		puts "#{self.rank} of #{self.suit}"
	end

	def self.random_card
		Card.new(rand(10), :spades)
	end
end

class Deck

	def initialize
		@cards = []
		@cards << Card.new(10, :spades)
		@cards << Card.new(9, :diamonds)
		@cards << Card.new(8, :hearts)
		@cards << Card.new(7, :club)
		@cards << Card.new(6, :diamonds)
		@cards << Card.new(5, :hearts)
		@cards << Card.new(4, :club)
		@cards << Card.new(3, :spades)
		@cards << Card.new(2, :diamonds)
		@cards << Card.new(1, :hearts)
	end

	def shuffle
		@cards.shuffle!
	end

	def output
		@cards.each do |card|
			card.output_card
		end
	end
	
	#removes the top card of the deck
	def deal
	 	puts "#{@cards.shift(1)}"
	end	

end

deck = Deck.new
deck.shuffle
deck.output
puts "== deal the card =="
deck.deal
puts "== after dealing the top card of deck =="
deck.output
