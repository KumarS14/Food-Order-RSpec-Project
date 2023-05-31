class Receipt
   def initialize(order)
        @order = order.current_order
    end
   def total
    the_total = []
    @order.each{|k,v| the_total << "You have orderd #{k} for $#{v.to_f}" }
    the_total <<  "The total comes down to: $#{@order.values.sum}"
    the_total << "Thank you for your time please come back again soon."
    return the_total.join("\n")
   end

end