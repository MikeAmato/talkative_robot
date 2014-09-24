require 'pry'
puts "What is your name?"
name = gets.chomp
puts "What is your age?"
age = gets.chomp.to_i
puts "What is your gender?"
gender = gets.chomp
puts "Hi #{name} who is #{age} years old!"
puts " "

puts age > 40 ? "You are getting older!" : "You are still young!"

puts "You are pretty old!" unless age < 60

if age < 25 
	puts "You can't rent a car yet!"
else
	puts "You can rent a car!"
end

old_age = 75 - age
older_age = age - 75

case 
when age < 75
	puts "You'll be 75 in #{old_age} years!"
when age == 75
	puts "You're 75."
when age > 75
	puts "You turned 75 #{older_age} years ago."
end

if age < 20 && gender.downcase == "m"
	puts "You are a young boy"
elsif age < 20 && gender.downcase == "f"
	puts "You are a young girl"
else
	puts "You are not very young"
end

if age > 70 && gender.downcase == "f"
	puts "Are you a great-great grandmother!"
end

if age > 70 && gender.downcase == "m"
	puts "Are you a great-great grandfather!"
end 

puts " "

puts "Do you mind if I call you #{name.chars.first}"

puts " "

puts "You will be 75 years old in #{old_age} years."
puts " "

name.upcase!
puts "Hey #{name}, where are you going!?"

puts "Yo, 'Dude', what's up?"


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