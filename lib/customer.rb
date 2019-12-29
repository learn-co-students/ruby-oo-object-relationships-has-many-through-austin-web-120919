
class Customer 
    attr_accessor :name, :age

    @@all = []

    def initialize(name, age)
        @name = name
        @age = age
        @@all << self
    end

    #INSTANCE METHODS

    def new_meal(waiter,total,tip)
        Meal.new(waiter,self,total,tip)
    end

    def meals
     myMeals
    end

    def waiters
        myMeals.collect do |meal|
            meal.waiter
        end
    end
    #HELPER METHOD

    def myMeals
        Meal.all.select do |meal|
            meal.customer == self
        end
    end

    #CLASS METHODS

    def self.all 
        @@all 
    end

end