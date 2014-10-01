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

  def name 
    @name
  end

  def age
    @age
  end

  def gender
    @gender
  end
  

end