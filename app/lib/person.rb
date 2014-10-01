class Person 
  attr_reader :name, :age, :author, :gender
  def initialize(args)
    @name   = args[:name]
    @age    = args[:age]
    @gender = args[:gender]
    @author = args[:author]
  end 
end