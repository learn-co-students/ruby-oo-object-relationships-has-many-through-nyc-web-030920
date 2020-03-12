class Waiter

    attr_accessor :name, :yrs_experience
    @@all = []

    def initialize(name, yrs_experience)
        @name = name 
        @yrs_experience = yrs_experience
        Waiter.all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        meal = Meal.new(self, customer, total, tip)
    end
    
    def meals 
        Meal.all.select do |meal_instance|
            meal_instance.waiter == self 
        end
    end

    def best_tipper

        max_tip = meals.max_by {|meals| meals.tip}

        max_tip.customer
    end




end