require 'pry'
require_relative './customer.rb'
require_relative './meal.rb'
require_relative './waiter.rb'

terrance = Customer.new("Terrance", 27)
andrew = Customer.new("Andrew", 7)
yomi = Customer.new("Yomi", 10)
jason = Waiter.new("Jason", 4)
lei = Waiter.new("Lei", 6)
 


jason.new_meal("Terrance",  30, 3)
jason.new_meal("andrew", 50, 20)
lei.new_meal("Yomi", 35, 50)
 
#  binding.pry

 puts "test"