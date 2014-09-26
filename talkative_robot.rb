require 'pry'
require 'CSV'


def car_rental(user)
	if user[:age] < 25 
		puts "You can't rent a car yet!\n\n"
	else
		puts "You can rent a car!\n\n"
	end
end


def relative_to_75(user)
	case 
	when user[:age] < 75
		puts "You'll be 75 in #{75 -user[:age]} years!\n\n"
	when user[:age] == 75
		puts "You're 75.\n\n"
	else
		puts "You turned 75 #{user[:age] - 75} years ago.\n\n"
	end
end


def is_young_gender(user)
	if user[:age] < 20 && user[:gender] == "m"
		puts "You are a young boy.\n\n"
	elsif user[:age] < 20 && user[:gender] == "f"
		puts "You are a young girl.\n\n"
	else
		puts "You are not very young.\n\n"
	end
end


def are_great_grandmother(user)
	if user[:age] > 70 && user[:gender] == "f"
		puts "Are you a great-great grandmother!\n\n"
	end
end


def are_great_grandfather(user)
	if user[:age] > 70 && user[:gender] == "m"
		puts "Are you a great-great grandfather!\n\n"
	end 
end


def get_user_info
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
def answer?(question)
		answer = ""

		while answer != ("yes" || "no")
			puts question
			answer = gets.chomp.downcase
		end

		answer == "yes"
end

def do_grocery_list(grocery_list)

	while grocery_list.length > 0
		random_item = grocery_list[rand(grocery_list.length + 1)]
	 	answer = answer?("Did you grab the #{random_item}? (yes or no)")
	 	if answer
			grocery_list.delete(random_item)
		end
		display_grocery_list(grocery_list)
	end
	#Working on the logic of this
	#while answer?("Do you want to add anything to the grocery list?")
	#new_item = gets.chomp
	#grocery_list << new_item
	#end

end

def display_grocery_list(grocery_list)

	grocery_list.each do |item|
	puts item

	end

end

def write_to_doc(grocery_list)
	IO.write("grocery list.txt" , grocery_list.join(", "))
end

def add_another_to_list(grocery_list)
	continue = true
	while continue
		puts "Do you want to add more? (yes, no)"
		add_more = gets.chomp.downcase
		if add_more == "no"
			continue = false
		else
			add_to_list(grocery_list)
		end
		
	end

end

def write_to_csv(grocery_list)
	CSV.open("grocery list CSV.csv", "w") do |csv|
		csv << ["Number", "  Item"]
		grocery_list.each_index { |index|	csv << ["#{index + 1}", "        #{grocery_list[index]}" ]	}
	end
end

def read_from_csv
	col_data = []
	CSV.foreach('grocery list CSV.csv') do |row|
		col_data << row[1]
		puts col_data
	end
end

def add_to_list(grocery_list)

	 puts "Please add to the grogery list."
	 grocery_list << gets.chomp.capitalize
	
end



def print_grocery_list(grocery_list)

	grocery_list.each_index { |item| puts "Item #{item + 1} -- #{grocery_list[item]}"}

end

def people_enum
	people = ["user", "author"]
	puts  people.detect {|item| item == "author"}
end

def select_by_name(people, my_name)
	people.select{ |item|  item == my_name}

end


#////////////////////////////////////////Methods/Functions above this line
new_grocery_list = Array.new
new_grocery_list = []
grocery_list = Array.new
grocery_list = []

people = [{name: "Michael Amato", age: 27, gender: "M"}, {name: "Joe User", age: 20, gender: "M"}]

author = {name: "Michael Amato", age: 27, gender: "M"}
user = {name: "Joe User", age: 20, gender: "M"}


puts author.reject{ |key, value| value != "Michael Amato" }
puts user.reject{ |key, value| value != "Michael Amato" }


me = select_by_name(people, author[:name])
puts me
people_enum


add_to_list(grocery_list)
add_another_to_list(grocery_list)
print_grocery_list(grocery_list)
write_to_doc(grocery_list)

write_to_csv(grocery_list)
read_from_csv
#current_user = get_user_info

#car_rental(current_user)

#relative_to_75(current_user)

#is_young_gender(current_user)

#are_great_grandmother(current_user)

#are_great_grandfather(current_user)

#do_grocery_list(grocery_list)

#display_grocery_list(grocery_list)




#///////////////////////////////////////////////////////////////// Code I haven't modified yet
#puts "Do you mind if I call you #{name.chars.first}.\n\n"


#puts age > 40 ? "You are getting older!\n\n" : "You are still young!\n\n"

#puts "You are pretty old!\n\n" unless age < 60

#grocery_list.each do |item|
#	puts item
#end


#Older code that did not fit with the changes, but was part of the original

# if age <= 25
# 	puts "Thats not going to happen for a long time"
# elsif 25 < age && age < 50
# 	puts "75 is still a good many years off!"
# else
# 	puts "Not sure how old you are!"
# end
# # puts "Which activity would you like to do tomorrow?"
# activity = "Hiking, Climbing, Sleeping, Coding"
# puts activity
# tomorrow = gets.chomp.capitalize 
# case tomorrow
# when "Hiking"
# 	puts "#{tomorrow} sounds too tiring!"
# when "Climbing"
# 	puts "#{tomorrow} sounds too dangerous!"
# when "Sleeping"
# 	puts "#{tomorrow} sounds too lazy!"
# when "Coding"
# 	puts "#{tomorrow} sounds like fun!"
# else
# 	puts "I don't know that activity!?"
# end