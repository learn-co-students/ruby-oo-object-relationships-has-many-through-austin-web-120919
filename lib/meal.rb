class Meal

    attr_reader :customer, :waiter, :tip

    @@all = []

    def initialize (waiter, customer, total, tip = 0)
        @waiter = waiter
        @customer = customer
        @total = total
        @tip = tip
        @@all << self
        waiter.meal = self
        customer.meal = self
    end

    def self.all
        @@all
    end

end