class Stack
	attr_reader :data, :value

	def initialize
		@data = nil
	end

	# current value of list node 
	def value
		@data.value
	end

	# next node
	def next_node
		@data.next_node
	end

	# Push a value onto the stack
	def push(newValue)
		@data = LinkedListNode.new(newValue, @data)
	end

	# Pop an item off the stack
	# Remove the last item that was pushed onto the
	# stack and return the value to the user
	def pop
	end

end