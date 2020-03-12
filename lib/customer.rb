class Customer
attr_accessor :age, :name
@@all = []
  def initialize(name,age)
    @age = age
    @name = name
    Customer.all << self
  end
  def self.all
    @@all
  end
  def new_meal(waiter,total,tip)
    Meal.new(waiter,self,total,tip)
  end
  def meals
    Meal.all.select {|meals| meals.customer == self}
  end
  def waiters
    meals.map do |meal|
    meal.waiter
    end
  end
end
