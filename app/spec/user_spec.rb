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
end
describe "User" do
  let(:user) { User.new( { name: "Michael", age: 20, gender: "m"} ) }

  subject { user } 

  it { should respond_to(:name) }
  it { should respond_to(:age) }
  it { should respond_to(:gender) }

  describe "#young_gender_message" do
    context "@age < 20" do
      it "returns proper message" do
        expected_message = "You are not very young."
        expect(user.young_gender_message).to eq(expected_message)
      end
    end
  end
end