require 'pry'
require 'CSV'







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
