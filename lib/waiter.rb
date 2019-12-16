class Waiter

    attr_accessor :meal

    @@all = []


    def initialize(name, years_of_experience)
        @name = name
        @years_of_experience = years_of_experience
        @@all << self
    end

    def new_meal(customer, total, tip = 0)
        Meal.new(self, customer, total, tip)
    end

    def self.all
        @@all
    end

    def meals
        Meal.all.find_all{|meal| meal.waiter == self}
    end

    def best_tipper
       # binding.pry
        meals.max{|a, b| a.tip <=> b.tip}.customer
    end

end