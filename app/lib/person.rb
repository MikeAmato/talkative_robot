class Person 
  def initialize(args)
    @name   = args[:name]
    @age    = args[:age]
    @gender = args[:gender]
    @author = args[:author]
  end 

  def author
    @author
  end 
end