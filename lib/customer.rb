class Customer
  attr_accessor :name, :age
  @@all=[]
  def initialize(name, age)
    @name == name
    @age == age
    Customer.all << self 
  end 

  def self.all
    @@all
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
    meals.map do |meal|
        meal.waiter 
    end 
  end 
  
 
  def best_tipper
    best_tipped_meal = Waiter.meals.max do |meal_a, meal_b|
        meal_a.tip <=> meal_b.tip
      end
     
      best_tipped_meal.customer
  end

end