require_relative 'binary_tree.rb'

def menuBST(tree)
	loop do
		puts "\n----------------------------------------------------------------"
		puts "----------------------BINARY SEARCH TREE MENU----------------------"
		puts "1. Insert Elements", "2. Print Largest Element", "3. Print Smallest Element", \
		"4. Inorder Traversal", "5. Postorder Traversal", "6. Preorder Traversal", "7. Search",\
		"8. Delete", "0. exit to main menu", "quit to exit"
		puts "Enter Choice: "
		choice = gets.chomp.downcase
		case choice
		when "1"
			puts "Enter comma separated integers: "
			nums = gets.chomp.split(/,/).map(&:to_i)
			nums.each do |i|
				tree.insert(i)
			end
		when "2"
			puts "Value of Maximum Element is #{tree.max.value}"
		when "3"
			puts "Value of Minimum Element is #{tree.min.value}"
		when "4"
			puts "Inorder Traversal of Tree is #{tree.inorder.inspect}"
		when "5"
			puts "Postorder Traversal of Tree is #{tree.postorder.inspect}"
		when "6"
			puts "Preorder Traversal of Tree is #{tree.preorder.inspect}"
		when "7"
			puts "Enter key: "
			key = gets.chomp.to_i
			if tree.find(key)
				puts "Found #{key}"
			else
				puts "#{key} does not exist"
			end
		when "8"
			puts "Enter key: "
			key = gets.chomp.to_i
			tree.delete(key)
			puts "Deleted #{key}"
		when "0"
			puts "Do you want to save the tree elements? y/n"
			loop do
				ch = gets.chomp
				if ch.downcase == "y"
					puts "Enter the name of the file to be saved:"
					file_n = ""
					loop do
						file_n = gets.chomp
						if File.file?(file_n)
							puts "File with that name already exists, enter a different name:"
							redo
						else
							break
						end
					end
					File.open(file_n, "w") { |f| f.write "Inorder Traversal of Tree #{tree.inorder.inspect}" }
					break
				elsif ch.downcase == "n"
					break
				else
					puts "Invalid choice. Enter y for yes or n for no."
					redo
				end
			end
			break
		when "quit"
			puts "Do you want to save the tree elements? y/n"
			loop do
				ch = gets.chomp
				if ch.downcase == "y"
					puts "Enter the name of the file to be saved:"
					file_n = ""
					loop do
						file_n = gets.chomp
						if File.file?(file_n)
							puts "File with that name already exists, enter a different name:"
							redo
						else
							break
						end
					end
					File.open(file_n, "w") { |f| f.write "Inorder Traversal of Tree #{tree.inorder.inspect}" }
					break
				elsif ch.downcase == "n"
					break
				else
					puts "Invalid choice. Enter y for yes or n for no."
					redo
				end
			end
			abort "Exiting"
			else
				puts "Invalid Choice. Please enter a valid option."
			end
		end
end
