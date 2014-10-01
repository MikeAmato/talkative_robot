require 'spec_helper'
#require './lib/grocery list csv.csv'
#require './lib/grocery list.txt'
require './lib/grocery list.rb'

describe "GroceryList" do 
  describe "#grocery_list" do
    it "creates a grocery list" do
      @gl = GroceryList.new(["Milk", "Butter", "Ham", "Cheese", "Pasta"])
      it { should respond_to(@gl.grocery_list) }
      expect(@gl.grocery_list).to eq("Milk", "Butter", "Cheese", "Ham", "Pasta")
    end
  end
end