require_relative 'linkedlist.rb'

def menuLL(list)
	loop do
		puts "\n----------------------------------------------------------------"
		puts "-------------------------LINKED LIST MENU-------------------------"
		puts "1. Insert Elements", "2. Search Element", "3. Delete", \
			"4. Print LinkedList", "5. Reverse LinkedList", "0. exit to main menu", "quit to exit"
    puts "Enter Choice: "
    choice = gets.chomp.downcase
    case choice
    when "1"
      puts "Enter comma separated integers: "
      nums = gets.chomp.split(/,/).map(&:to_i)
      nums.each do |i|
        list.add(i)
      end
    when "2"
      puts "Enter key: "
      key = gets.chomp.to_i
      if list.find(key)
        puts "Found #{key}"
      else
        puts "#{key} does not exist"
      end
    when "3"
      puts "Enter key: "
      key = gets.chomp.to_i
      list.delete(key)
      puts "Deleted #{key}"
    when "4"
      puts "Linked List: #{list.print[1..-1]}"
    when "5"
      puts "Reversing Linked List"
      list.reverse
      puts "Reversed List: #{list.print[0..-2]}"
    when "0"
      puts "Do you want to save the list elements? y/n"
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
          File.open(file_n, "w") { |f| f.write "Linked List: #{list.print}" }
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
      puts "Do you want to save the list elements? y/n"
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
          File.open(file_n, "w") { |f| f.write "Linked List: #{list.print}" }
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
