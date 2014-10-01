require 'pry'							#This allows stepping through the code 
require 'CSV'							#This allows the reading/writing of csv files
require './person'  			#These are files that will be accessed when the code is run
require './user'					#//
require './author'				#//
require './grocery list'  #//


# user_info = User.get_user_info
# @user = User.new(user_info)
# @user.relative_to_75
# @user.car_rental
# puts @user.young_gender_message
# puts @user.age_and_gender_based_message
# puts @user.activity
# @user.first_initial_check



col_data = []

gl = GroceryList.new({items: ['Milk', 'Eggs', 'Ham', 'Beef', 'Cheese']})
gl.display_grocery_list
gl.add_another_to_list
gl.write_to_doc('grocery list.txt')
gl.write_to_csv('grocery list csv.csv')
gl.read_from_csv('grocery list csv.csv', col_data)
gl.print_grocery_list
gl.print_csv(col_data)
