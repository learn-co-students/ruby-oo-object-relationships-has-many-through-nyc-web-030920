require 'pry'
class Meal
attr_accessor :waiter, :total, :customer, :tip
@@all = []
    def initialize(waiter,customer,total,tip=0)
        @waiter = waiter
        @total = total
        @customer = customer
        @tip = tip
        Meal.all << self
    end
    def self.all
        @@all
    end
end