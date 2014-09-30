class User < Person
attr_reader :name, :age, :gender 
attr_writer :author

  def initialize(args)
    super(args)
    @author = args[:author]
    @name   = args[:name]
    @age    = args[:age]
    @gender = args[:gender]

  end

  def self.get_user_info
    user = {} 
    puts "What is your name?"
    user[:name] = gets.chomp

    puts "What is your age?"
    user[:age] = gets.chomp.to_i

    while user[:gender] != "m" && user[:gender] != "f"
      puts "Are you (M)ale or (F)emale?"
      user[:gender] = gets.chomp.downcase
    end
    user
  end

  def relative_to_75
    case 
    when @age < 75
      puts "You'll be 75 in #{75 - @age} years!\n\n"
    when @age == 75
      puts "You're 75.\n\n"
    else
      puts "You turned 75 #{@age - 75} years ago.\n\n"
    end
  end

  def car_rental
    if @age < 25 
      puts "You can't rent a car yet!\n\n"
    else
      puts "You can rent a car!\n\n"
    end
  end

  def young_gender_message
    if young? && male?
      puts "You are a young boy.\n\n"
    elsif young? && female?
      puts "You are a young girl.\n\n"
    else
      puts "You are not very young.\n\n"
    end
  end

  def age_and_gender_based_message
    if old? && female?
      puts "Are you a great grandmother!\n\n"
    elsif old? && male?
      puts "Are you a great grandfather!\n\n"
    elsif young? && female?
      puts "You are not a great grandmother!\n\n"
    elsif young? && male?
      puts "You are not a great grandfather!\n\n"
    end
  end
  
  def young?
    age < 20
  end

  def old?
    age >85
  end

  def male?
    @gender == "m" || @gender == "male" 
  end

  def female?
    @gender == "f" || @gender == "female"
  end

  def activity
    puts "Which activity would you like to do tomorrow?"
    activity = "Hiking, Climbing, Sleeping, Coding"
    puts activity
    tomorrow = gets.chomp.capitalize 
    case tomorrow
    when "Hiking"
      puts "#{tomorrow} sounds too tiring!"
    when "Climbing"
      puts "#{tomorrow} sounds too dangerous!"
    when "Sleeping"
      puts "#{tomorrow} sounds too lazy!"
    when "Coding"
      puts "#{tomorrow} sounds like fun!"
    else
      puts "I don't know that activity!?"
    end
  end

  def first_initial_check
    puts "Do you mind if I call you by your first inital"
    input = gets.chomp.downcase
    if input == "yes"
      puts "Then I will call you #{first_initial}\n\n"
    end
  end

  private

    def first_initial
      @name = @name.chars.first
    end

    def people_enum
      people = ["user", "author"]
      puts  people.detect {|item| item == "author"}
    end

    def select_by_name(people, my_name)
      people.select{ |item|  item == my_name}
    end

end