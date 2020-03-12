class Waiter
@@all = []
attr_accessor :name, :experience
def initialize(name, experience)
    @name = name
    @experience = experience
    Waiter.all << self
end

def self.all
    @@all
end

def new_meal(customer, total, tip=0)
    Meal.new(self, customer, total, tip)
end

def meals
    Meal.all.select {|meals| meals.waiter == self}
end

def best_tipper
    best_tipped_meal = meals.max {|meal_a, meal_b| meal_a.tip <=> meal_b.tip}
best_tipped_meal.customer
end

end