require_relative 'binary_tree.rb'
require_relative 'linkedlist.rb'
require_relative 'binary_tree_menu.rb'
require_relative 'linkedlist_menu.rb'

tree = BST.new
list = LinkedList.new(0)

loop do
	puts "\n----------------------------------------------------------------"
	puts "Enter 1 to Work with Binary Search Tree", "Enter 2 to Work with Linked List", "Enter quit to exit"
	puts "Enter Choice: "
	menu = gets.chomp.downcase
	case menu
	when "1"
		puts "Do you want to load BST from file? y/n"
		loop do
			ans = gets.chomp
			if ans.downcase == "y"
				puts "Enter filename"
				file_name = gets.chomp
				data = File.read(file_name).chomp.split(/,/).map(&:to_i)
				data.each do |i|
					tree.insert(i)
				end
				break
			elsif ans.downcase == "n"
				break
			else
				puts "Invalid choice. Enter y for yes or n for no."
				redo
			end
		end
	menuBST(tree)
	when "2"
		menuLL(list)
	when "quit"
		abort "Exiting"
	else
		puts "Invalid Choice. Please enter a valid option."
	end
end
