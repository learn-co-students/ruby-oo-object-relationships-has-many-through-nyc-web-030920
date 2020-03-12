class Customer
    attr_accessor :name, :age
    @@all = []
  def initialize(name, age)
    @name = name
    @age = age 
    Customer.all << self
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end

  def meals
    Meal.all.select do |meal|
        meal.customer == self
    end
  end

  def waiters
    waiter_array = []
    meals.each do |meal|
       waiter_array << meal.waiter
    end
    waiter_array
  end

  def self.all 
    @@all
  end 
end