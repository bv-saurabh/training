class LLNode
	attr_accessor :value, :next

	def initialize(value)
		@value = value
		@next = nil
	end
end

class LinkedList
	attr_accessor :head

	def initialize(value)
		@head = LLNode.new(value)
	end

	def add(value)
		current = @head
		while current.next
			current = current.next
		end
		current.next = LLNode.new(value)
	end

	def find(value)
		node = @head
		while (node.next)
			return node if node.value == value
			node = node.next
		end
		false
	end

	def delete(value)
		current = @head
		temp = nil
		previous = nil
		while current
			if current.value == value
				temp = current.next
				previous.next = temp
				return true
			else
				previous = current
				current = current.next
			end
		end
		return false
	end

	def print
		arr = []
		current = @head
		while current
			arr << current.value
			current = current.next
		end
		arr
	end

	def reverse
		previous = nil
		current = @head
		while current
			next_node = current.next
			current.next = previous
			previous = current
			current = next_node
		end
		@head = previous
	end
end
