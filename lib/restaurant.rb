class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end


  def closing_time(hours)
    (@opening_time.to_i + hours).to_s + ':00'
  end

  def add_dish(dish)
    @dishes << dish
  end

  def open_before_noon?
    @opening_time.to_i <= 12
  end

  def menu_dish_names
    names_uppercase = []
    @dishes.each do |name|
      names_uppercase << name.upcase
    end
    names_uppercase
  end

end
