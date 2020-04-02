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


  def meals 
    Meal.all.select do |meal|
        meal.customer == self 
    end 
  end 

  def waiters 
    self.meals.map do |meal|
        meal.waiter 
    end 

  end 

  def new_meal_20_percent(waiter,total, tip=0)
    tip = total *0.2
    Meal.new(waiter,self,total,tip)
  end

  def self.oldest_customer #customer has an age and name attribute 
    customer_age = 0 
    oldest_customer = nil
    self.all.each do |customer|
        if customer.age > customer_age
            customer_age = customer.age 
            oldest_customer = customer 
        end 
    end 
    oldest_customer 
    end 
   

  end