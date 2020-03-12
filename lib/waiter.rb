require 'pry'
class Waiter
    attr_accessor :age, :years
    @@all = []
      def initialize(name,years)
        @age = age
        @years = years
        Waiter.all << self
      end
      def self.all
        @@all
      end
      def new_meal(customer,total,tip)
        Meal.new(self,customer,total,tip)
      end
    def meals
        Meal.all.select {|meals| meals.waiter == self}
    end
    def best_tipper
        best_tipped_meal = meals.max do |meal_a, meal_b|
          meal_a.tip <=> meal_b.tip
        end
        best_tipped_meal.customer
    end
end