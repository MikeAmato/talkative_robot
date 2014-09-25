require 'pry'


def car_rental(age)
	if age < 25 
		puts "You can't rent a car yet!\n\n"
	else
		puts "You can rent a car!\n\n"
	end
end


def relative_to_75(age)
	case 
	when age < 75
		puts "You'll be 75 in #{age - 75} years!\n\n"
	when age == 75
		puts "You're 75.\n\n"
	when age > 75
		puts "You turned 75 #{75 - age} years ago.\n\n"
	end
end


def is_young_gender(age , gender)
	if age < 20 && gender.downcase == "m"
		puts "You are a young boy.\n\n"
	elsif age < 20 && gender.downcase == "f"
		puts "You are a young girl.\n\n"
	else
		puts "You are not very young.\n\n"
	end
end


def are_great_grandmother(age , gender)
	if age > 70 && gender.downcase == "f"
		puts "Are you a great-great grandmother!\n\n"
	end
end


def are_great_grandfather(age , gender)
	if age > 70 && gender.downcase == "m"
		puts "Are you a great-great grandfather!\n\n"
	end 
end


def what_name
	puts "What is your name?"
	gets.chomp
end


def how_old
	puts "What is your age?"
	gets.chomp.to_i
end


def what_gender
	puts "What is your gender?"
	gets.chomp
end 

#////////////////////////////////////////Methods/Functions above this line
name = what_name

age = how_old

gender = what_gender

old_age = 75 - age

older_age = age - 75

car_rental(age)


relative_to_75(age)


is_young_gender(age, gender)


are_great_grandmother(age , gender)


are_great_grandfather(age, gender)


puts "Do you mind if I call you #{name.chars.first}.\n\n"


puts "Hi #{name} who is #{age} years old!\n\n"


puts "You will be 75 years old in #{old_age} years.\n\n"


puts age > 40 ? "You are getting older!\n\n" : "You are still young!\n\n"


name.upcase!

puts "Hey #{name}, where are you going!?\n\n"


puts "You are pretty old!\n\n" unless age < 60


puts "Yo, 'Dude', what's up?\n\n"


grocery_list = Array.new
grocery_list = ["bread", "cheese", "chicken", "wine", "soup", "butter"]

random_item = grocery_list[rand(grocery_list.length + 1)]
puts "Did you grab the #{random_item}?\n\n"

grocery_list.delete(random_item)

puts "Oh yeah, don't forget:"
new_item = gets.chomp
grocery_list << new_item

puts " "

grocery_list.each do |item|
	puts item
end


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