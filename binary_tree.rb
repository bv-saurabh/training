class BSTNode
	attr_accessor :left, :right, :value

	def initialize(value)
		@value = value
		@left = nil
		@right = nil
	end
end

class BST
	attr_accessor :root

	def initialize
		@root = BSTNode.new(nil)
	end

	def insert(value, node = @root)
		if node
			if node.value
				if value < node.value
					if node.left
						insert(value, node.left)
					else
						node.left = BSTNode.new(value)
					end
				elsif value > node.value
					if node.right
						insert(value, node.right)
					else
						node.right = BSTNode.new(value)
					end
				end
			else
				node.value = value
			end
		else
			node = BSTNode.new(value)
		end
	end

	def max(node = @root)
		return nil unless node
		return node unless node.right
		max(node.right)
	end

	def min(node = @root)
		return nil unless node
		return node unless node.left
		min(node.left)
	end

	def inorder(node = @root, arr = [])
		inorder(node.left, arr) if node.left
		arr << node.value
		inorder(node.right, arr) if node.right
		arr
	end

	def postorder(node = @root, arr = [])
		postorder(node.left, arr) if node.left
		postorder(node.right, arr) if node.right
		arr << node.value
		arr
	end

	def preorder(node = @root, arr = [])
		arr << node.value
		preorder(node.left, arr) if node.left
		preorder(node.right, arr) if node.right
		arr
	end

	def find(node = @root, value)
		return nil unless node && node.value
		return node if node.value == value
		if value > node.value
			find(node.right, value)
		else
			find(node.left, value)
		end
	end

	def delete(node = @root, value)
		return unless node
		if value > node.value
			node.right = delete(node.right, value)
		elsif value < node.value
			node.left = delete(node.left, value)
		else
			if node.left.nil?
				node = node.right
			elsif node.right.nil?
				node = node.left
			else
				node = shift_values(node)
			end
		end
		node
	end

	def shift_values(node)
		node.value = get_next_value(node.right)
		node.right = right_subtree(node.right)
		node
	end

	def get_next_value(node)
		if node.left
			get_next_value(node.left)
		else
			node.value
		end
	end

	def right_subtree(node)
		if node.left
			node.left = right_subtree(node.left)
		else
			return node.right
		end
		node
	end
end
