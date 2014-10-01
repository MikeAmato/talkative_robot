require 'spec_helper.rb'
require '.\lib\person.rb'
require '.\lib\user.rb'

describe "User" do
  describe "#name" do
    it "returns name" do
      @user = User.new( { name: "Michael", age: 27, gender: "m"} )
      expect(@user.name).to eq("Michael")
    end
  end
  
  subject { user } 

  it { should respond_to(:name) }
  it { should respond_to(:age) }
  it { should respond_to(:gender) }

  describe "#young_gender_message" do
    context "@age < 20" do
      it "returns proper message" do
        returned_message = @user.young_gender_message
        expected_message = "You are not very young."
        expect(returned_message).to eq(expected_message)
      end
    end
  end
end