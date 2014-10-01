require 'spec_helper'
require './lib/person'

describe "Person" do 
  describe "author" do
    it "returns author" do
      @person = Person.new( { author: true} )
      expect(@person.author).to eq(true)
    end
  end
end 

describe "Person" do
  let(:person) { Person.new( { name: "Michael", age: 27, gender: "m"} ) }

  subject { person }

  it { should respond_to(:name) }
  it { should respond_to(:age) }
  it { should respond_to(:gender) }

  # describe "first_initial" do
  #   it "returns first letter of name" do
  #     expect(person.first_initial).to eq("M")
  #   end
  # end
end
