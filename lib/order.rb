class Order
    def initialize(menu)
        @menu = menu.menu
        @order = []
    end
    def place_order(item)
        raise 'This item does not exist' unless @menu.has_key?(item.to_sym)
        @order << "#{item} for: #{@menu.fetch(item.to_sym)}"
    end
    def current_order
        return @order.join
    end


end