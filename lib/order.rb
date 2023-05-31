class Order
    def initialize(menu)
        @menu = menu.menu
    end
    def order(item)
        raise 'This item does not exist' unless @menu.has_key?(item.to_sym)

    end


end