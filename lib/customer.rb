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

    def new_meal(waiter, total, tip)
        meal = Meal.new(waiter, self, total, tip)
    end

    def meals
        Meal.all.select do |meal_instance|
            meal_instance.customer == self 
        end
    end

    def waiters 
        meals.map do |meal_instance|
            meal_instance.waiter 
            
        end
    end
       


end