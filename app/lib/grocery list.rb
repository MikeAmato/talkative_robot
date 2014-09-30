class GroceryList
  def initialize(args)
    @grocery_list = args[:items]  #for making the GL array using a hash arg
  end

  def grocery_list
    @grocery_list
  end

  def do_grocery_list
    until @grocery_list.empty?
      random_item = @grocery_list[rand(grocery_list.length + 1)]
      answer = answer?("Did you grab the #{random_item}? (yes or no)")
      if answer
        @grocery_list.delete(random_item)
      end
      display_grocery_list
    end
  end

  def display_grocery_list
    @grocery_list.each { |item| puts item }
  end

  def read_from_doc(any_doc_file)
    IO.read(any_doc_file).capitalize
  end

  def write_to_doc(any_doc_file)
    IO.write(any_doc_file, @grocery_list.join(", "))
  end

  def add_another_to_list
    continue = false
    until continue
      puts "Do you want to add more? (yes, no)"
      add_more = gets.chomp.downcase
      if add_more == "no"
        continue = true
      else
        add_to_list
      end
    end
  end

  def write_to_csv(any_csv_file)
    CSV.open(any_csv_file, "w") do |csv|
      csv << ["Number", "Item"]
      @grocery_list.each_index { |index| csv << [index + 1, @grocery_list[index]] }
    end
  end

  def read_from_csv(any_csv_file, col_data)
    CSV.foreach(any_csv_file) { |row| col_data << row[1] }
    col_data
  end

  def print_csv(col_data)
    puts "This is the current grocery list."
    col_data.shift
    puts col_data
  end

  def print_grocery_list
    @grocery_list.each_index { |item| puts "Item #{item + 1} -- #{@grocery_list[item]}"}
  end

  private
    def answer?(question)
      answer = ""
      until answer == ("yes" || "no")
        puts question 
        answer = gets.chomp.downcase
      end
      answer == "yes"
    end

    def add_to_list
       puts "Please add to the grogery list."
      @grocery_list << gets.chomp.capitalize
  
    end
end