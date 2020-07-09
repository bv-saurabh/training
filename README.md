# README
TRAINING PROGRAM -- PROJECT 1
IMPLEMENTING BINARY SEARCH TREE AND LINKED LIST IN RUBY

Ruby Version
Ruby 2.5.1

This project implements the Binary Search Tree and Linked List data structures using ruby. It
consists of three files, namely linkedlist.rb, tree.rb and main.rb. It can be used by running the
file main.rb in a terminal. To use the program, run the following command in a terminal:

<code>ruby main.rb</code>

main.rb
This is the main file that uses the other two files to implement and provide basic functionalities
of the two data structures. It also contains a menu for the users to move around the program and use
the functions they require.

linkedlist.rb
This implements the linked list data structure. It contains two classes, LLNode and LinkedList.
The first one, LLNode, is used to create nodes for the Linked list. It consists of two instance
variables, value, to hold the value of the current node, and next, to point to the next node in the
list. In addition to that, it also has an initialize constructor method to initialize the value
and next variables.
The second class, LinkedList, implements all the major functions for a linkedlist. They are listed
below:
	1. add :- Used to add a node to the linkedlist.
	2. find :- Used to search for a value in the linkedlist.
	3. delete :- Used to delete a node from the linkedlist.
	4. print :- Used to print the elements of the linkedlist.
	5. reverse :- Used to reverse the linkedlist.

tree.rb
This implements the Binary Search Tree data structure. It contains two classes, BSTNode and tree.
The first one, BSTNode, is used to create nodes for the Binary search tree. It consists of three
instance variables, value, to hold the value of the current node, left, to point to the left child
the current node, and right to point to then right child of the current node. In addition to that,
it also has an initialize constructor method to initialize the value,left and right variables.
The second class, Tree, implements all the major functions for a BST. They are listed below:
	
	1. insert :- Used to insert a node into the BST.
	2. max :- Used to search for the maximum value in the BST.
	3. min :- Used to search for the minimum value in the BST.
	4. inorder :- Used to print the inorder traversal of the BST.
	5. postorder :- Used to print the postorder traversal of the BST.
	6. preorder :- Used to print the preorder traversal of the BST.
	7. find :- Used to search for a value in the BST.
	8. delete :- Used to delete a node from the BST.
