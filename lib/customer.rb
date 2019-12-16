require 'pry'
class Customer

    attr_accessor :meal

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    def new_meal(waiter, total, tip = 0)
        Meal.new(waiter, self, total, tip)
    end

    def self.all
        @@all
    end

    def meals
        # binding.pry
        Meal.all.find_all{|meal| meal.customer == self}
    end

    def waiters
        meals.map{|meal| meal.waiter}
    end

end