class Waiter
 
    attr_accessor :name, :yrs_experience
   
    @@all = []
   
    def initialize(name, yrs_experience)
      @name = name
      @yrs_experience = yrs_experience
      Waiter.all  << self
    end
   
    def self.all
      @@all
    end


     
  def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
  end

  def meals
    Meal.all.select do |meal|
      meal.waiter == self #checking for waiter now
    end
  end

  def best_tipper
    best_tipped_meal = meals.max do |meal_a, meal_b| # that will give us customer who tipped most 
        meal_a.tip <=> meal_b.tip 
    end 
    best_tipped_meal.customer 
  end 
   
  end