require 'spec_helper'
#require './lib/grocery list csv.csv'
#require './lib/grocery list.txt'
require './lib/grocery list'

describe "GroceryList" do 
  describe "#grocery_list" do
    it "creates a grocery list" do
      @gl = GroceryList.new(["Milk", "Butter", "Ham", "Cheese", "Pasta"])
      it { should respond_to(@gl.grocery_list) }
      expect(@gl.grocery_list).to eq("Milk", "Butter", "Cheese", "Ham", "Pasta")
    end
  end
end

#class example

# describe "GroceryList" do
#   let(:grocery_list) { GroceryList.new(["milk", "Eggs", "bread"])}
#   describe "random_grocery_item" do
#     context "first time its run" do
#       it "finds a random sample"
#       random_item = grocery_list.random_item
#       expect(grocery_list.items.include?(random_item)).to be_truthy #older versions use be_true
#       .to eq
#       .to be_truthy
#       .to be_falsey
#     end

#     context "second time its run" do 
#       it "grabs prior assigment" do
#         first_random_item = grocery_list.random_item  #can make variables to test
#         second_random_item = grocery_list.random_item
#         expect(first_random_item).to eq(second_random_item)
#       end
#     end
#   end
# end
