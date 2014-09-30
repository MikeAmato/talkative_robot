require 'spec_helper'
require './lib/person'

describe "Person" do 
  describe "author" do
    it "returns author" do
      @user = User.new( { author: true} )
      expect(@user.author).to eq(true)
    end
  end
end 

describe "Person" do
  let(:person) { Person.new( { name: "Michael", age: 27, gender: "m"} ) }

  subject { person }

  it { should respond_to(:name) }
  it {should respond_to(:age) }
  it {should respond_to(:gender) }
  it {should respond_to(:hometown) }

  describe "first_initial" do
    it "returns first letter of name" do
      expect(person.first_initial).to eq("G")
    end
  end

  describe "last_name" do
    it "returns last name" do
      expect(person.last_name).to eq("Pass")
    end
  end

end
