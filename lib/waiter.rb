require 'pry'

class Waiter
    attr_accessor :name, :yrs_experience

    @@all = []

    def initialize(name, yrs_experience)
        @name = name
        @yrs_experience = yrs_experience
        @@all << self
    end

    #INSTANCE METHODS

    def new_meal(customer,total,tip)
        Meal.new(self,customer,total,tip)
    end

    def meals
       myMeals
    end

    #HELPER METHOD

    def myMeals
        Meal.all.select do |meal|
            meal.waiter == self
        end
    end

    def best_tipper
        myMeals.max do |meal_a,meal_b|
            meal_a.tip <=> meal_b.tip
        end.customer
    end

    #CLASS METHODS

    def self.all
        @@all 
    end
end