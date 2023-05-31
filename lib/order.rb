class Order
    def initialize(menu)
        @menu = menu.menu
        @order = Hash.new
    end
    def place_order(item)
        raise 'This item does not exist' unless @menu.has_key?(item.to_sym)
        @order[item] = @menu.fetch(item.to_sym)
    end
    def current_order
        return @order
    end


end