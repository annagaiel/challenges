require_relative 'Stack'

class LinkedListNode
	attr_accessor :value, :next_node

	def initialize(value, next_node=nil)
		@value = value
		@next_node = next_node
	end

end

def print_values(list_node)
	print "#{list_node.value} --> "
	if list_node.next_node.nil?
		print "nil\n"
		return
	else
		print_values(list_node.next_node)
	end
end

def reverse_list(list)
	newlist = Stack.new
	
	while list
		newlist.push(list.value)
		list = list.next_node
	end

	newlist.pop
	
end


node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------------"

revlist = reverse_list(node3)

print_values(revlist)