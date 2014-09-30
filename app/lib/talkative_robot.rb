require 'pry'
require 'CSV'

class Person 
	def initialize(args)
		@name   = args[:name]
		@age    = args[:age]
		@gender = args[:gender]
		@author = args[:author]
	end 

	def author
		@author
	end 
end

class Author < Person
	def initialize
		super(args)
		@author = true
	end
end

class User < Person
attr_reader :name, :age, :gender 
attr_writer :author

	def initialize(args)
		super(args)
		@author = args[:author]
		@name   = args[:name]
		@age    = args[:age]
		@gender = args[:gender]

	end

	def self.get_user_info
		user = {}	
		puts "What is your name?"
		user[:name] = gets.chomp

		puts "What is your age?"
		user[:age] = gets.chomp.to_i

		while user[:gender] != "m" && user[:gender] != "f"
			puts "Are you (M)ale or (F)emale?"
			user[:gender] = gets.chomp.downcase
		end
		user
	end

	def relative_to_75
		case 
		when @age < 75
			puts "You'll be 75 in #{75 - @age} years!\n\n"
		when @age == 75
			puts "You're 75.\n\n"
		else
			puts "You turned 75 #{@age - 75} years ago.\n\n"
		end
	end

	def car_rental
		if @age < 25 
			puts "You can't rent a car yet!\n\n"
		else
			puts "You can rent a car!\n\n"
		end
	end

	def young_gender_message
		if young? && male?
			puts "You are a young boy.\n\n"
		elsif young? && female?
			puts "You are a young girl.\n\n"
		else
			puts "You are not very young.\n\n"
		end
	end

	def age_and_gender_based_message
		if old? && female?
			puts "Are you a great grandmother!\n\n"
		elsif old? && male?
			puts "Are you a great grandfather!\n\n"
		elsif young? && female?
			puts "You are not a great grandmother!\n\n"
		elsif young? && male?
			puts "You are not a great grandfather!\n\n"
		end
	end
	
	def young?
		age < 20
	end

	def old?
		age >85
	end

	def male?
		@gender == "m" || @gender == "male" 
	end

	def female?
		@gender == "f" || @gender == "female"
	end

	def activity
 		puts "Which activity would you like to do tomorrow?"
 		activity = "Hiking, Climbing, Sleeping, Coding"
 		puts activity
 		tomorrow = gets.chomp.capitalize 
 		case tomorrow
 		when "Hiking"
 			puts "#{tomorrow} sounds too tiring!"
 		when "Climbing"
 			puts "#{tomorrow} sounds too dangerous!"
 		when "Sleeping"
 			puts "#{tomorrow} sounds too lazy!"
 		when "Coding"
 			puts "#{tomorrow} sounds like fun!"
 		else
 			puts "I don't know that activity!?"
 		end
	end

	def first_initial_check
		puts "Do you mind if I call you by your first inital"
		input = gets.chomp.downcase
		if input == "yes"
			puts "Then I will call you #{first_initial}\n\n"
		end
	end

	private

		def first_initial
			@name = @name.chars.first
		end

		def people_enum
			people = ["user", "author"]
			puts  people.detect {|item| item == "author"}
		end

		def select_by_name(people, my_name)
			people.select{ |item|  item == my_name}
		end

end

class GroceryList
	def initialize(args)
		@grocery_list = args[:items]  #for making the GL array using a hash arg
	end

	def grocery_list
		@grocery_list
	end

	def do_grocery_list
		until @grocery_list.empty?
			random_item = @grocery_list[rand(grocery_list.length + 1)]
		 	answer = answer?("Did you grab the #{random_item}? (yes or no)")
		 	if answer
				@grocery_list.delete(random_item)
			end
			display_grocery_list
		end
	end

	def display_grocery_list
		@grocery_list.each { |item| puts item }
	end

	def read_from_doc(any_doc_file)
		IO.read(any_doc_file).capitalize
	end

	def write_to_doc(any_doc_file)
		IO.write(any_doc_file, @grocery_list.join(", "))
	end

	def add_another_to_list
		continue = false
		until continue
			puts "Do you want to add more? (yes, no)"
			add_more = gets.chomp.downcase
			if add_more == "no"
				continue = true
			else
				add_to_list
			end
		end
	end

	def write_to_csv(any_csv_file)
		CSV.open(any_csv_file, "w") do |csv|
			csv << ["Number", "Item"]
			@grocery_list.each_index { |index| csv << [index + 1, @grocery_list[index]] }
		end
	end

	def read_from_csv(any_csv_file, col_data)
		CSV.foreach(any_csv_file) { |row| col_data << row[1] }
		col_data
	end

	def print_csv(col_data)
		puts "This is the current grocery list."
		col_data.shift
		puts col_data
	end

	def print_grocery_list
		@grocery_list.each_index { |item| puts "Item #{item + 1} -- #{@grocery_list[item]}"}
	end

	private
		def answer?(question)
			answer = ""
			until answer == ("yes" || "no")
				puts question	
				answer = gets.chomp.downcase
			end
			answer == "yes"
		end

		def add_to_list
			 puts "Please add to the grogery list."
		 	@grocery_list << gets.chomp.capitalize
	
		end
end

#////////////////////////////////////////Methods/Functions above this line
#people = [{name: "Michael Amato", age: 27, gender: "M"}, {name: "Joe User", age: 20, gender: "M"}]
#author = {name: "Michael Amato", age: 27, gender: "M"}
#user = {name: "Joe User", age: 20, gender: "M"}
#puts author.reject{ |key, value| value != "Michael Amato" }
#puts user.reject{ |key, value| value != "Michael Amato" }

#grocery_list = read_from_csv('grocery list csv.csv')
#print_csv(grocery_list)
#write_to_csv(grocery_list, 'grocery list CSV.csv')

#me = select_by_name(people, author[:name])
#puts me
#people_enum

user_info = User.get_user_info
@user = User.new(user_info)


@user.relative_to_75
@user.car_rental
@user.young_gender_message
@user.age_and_gender_based_message
@user.activity
@user.first_initial_check

col_data = []

gl = GroceryList.new({items: ['Milk', 'Eggs', 'Ham', 'Beef', 'Cheese']})
gl.print_grocery_list
gl.add_another_to_list
gl.write_to_doc('grocery list.txt')
gl.write_to_csv('grocery list csv.csv')
gl.read_from_csv('grocery list csv.csv', col_data)
gl.print_grocery_list
gl.print_csv(col_data)
