class CashRegister
    attr_accessor :discount, :total, :title, :price, :quantity

    def initialize(discount = 0)
        @discount = discount
        @total = 0
    end 

    def add_item(title, price)
        new_total = self.total += price
    end


    def apply_discount
        if self.discount != 0
            discount_math = (100.0 - self.discount) / 100
            self.total = (self.total * discount_math).to_i
            "After the discount, the total comes to $#{self.total}."
        else 
            "There is no discount to apply."
    end

    # def apply_discount
    #     if self.discount != 0
    #         discount_math = self.total * self.discount
    #         discount_total = self.total - discount_math
    #         "Success! Your new total is #{discount_total}"
    #     else 
    #         "There is no discount to apply"
    # end

    def items(title, price)
        new_items = []

    end

    def void_last_transaction
        if self.total != 0
            self.total - title.last 
        else self.total = 0.0
        end 
    end
end
end