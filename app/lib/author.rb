class Author < Person
  def initialize
    super(args)
    @name   = "Michael"
    @age    = 27
    @gender = "m"
    @author = true
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