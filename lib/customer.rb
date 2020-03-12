class Customer

  attr_accessor :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    Customer.all << self
  end

  def self.all
    @@all
  end

  def new_meal(waiter, total, tip=0)
    Meal.new(waiter, self, total, tip)
  end

  #returns all meals for this customer
  def meals
    Meal.all.select do |meal|
      meal.customer == self
    end
  end

  #returns an array of waiter linked to this customer
  def waiters
    meals.map do |meal|
      meal.waiter
    end
  end
    
end