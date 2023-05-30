# Multi-Class Planned Design Recipe

## 1. Describe the Problem

As a customer, so that I can check if I want to order something, I would like to see a list of dishes with prices.

As a customer, so that I can order the meal I want, I would like to be able to select some number of several available dishes.

As a customer, so that I can verify that my order is correct, I would like to see an itemised receipt with a grand total.

_Use the twilio-ruby gem to implement this next one._

As a customer, so that I am reassured that my order will be delivered on time, I would like to receive a text such as "Thank you! Your order was placed and will be delivered before 18:52" after I have ordered."

## 2. Design the Class System

```

 ┌─────────────────────────────┐
 │ Menu                        │   
 │  - add(dish)                │ ◄───────┐                
 │  - view_menu                │         │ includes the use of a menu
 │    => ["kebab: £4.99", ...] │         │ object.
 │                             │  ┌──────────────────────────┐
 │                             │  │ Order                    │
 └────┬────────────────────────┘  │  - place_order           │
                                  │   lets you order and     |
                                  |    verifys its a item on |
                                  |    the menue             |       
                                  │
                                  │                          │
 ┌─────────────────────────────┐  │                          │
 │ Receipt                     │  │                          │
 │  - view_receipt             │  └──────────────────────────┘
 │    =>  => [dish: £4.99      │
 │    total: £27.88}           │
 │    => "4.99"                │
 │  - get_text                 │
 └─────────────────────────────┘

```

```ruby
class Order 
  def initialize(menu)
   @menu  = menu
   @items = []
   # menu is a instance of the Menu class and is needed to place and verify orders
    
  end

  def place_order(item, phone_number) 
   error "item does not exist" if @menu.include?(item) # conditional to see if item exists
    #if it does exist
    @items << item
    # Functions to check to see if the user order is in the menu then it collects the dishes they want
    # menu is an instance of Menu phone_number is a string
    # gets input from customer for the dishes they want 
    # returns nothing
  end

  def remove_order(a_item)
    @items.delete(a_item)
    #incase the user wants to no longer order the item they can remove it
    #should work in tandem with the reciept class to change the recipt depending on what orders are removed
  end
end
  

class Menu
  def initialize
    @the_menu = { #is the menu that will be show to the user and the one they choose from
        chips: 2.99 ,
        pizza: 3.99 ,
        burger: 5.99 ,
        salmon: 6 ,
    }
  end
   
   def show_menu #returns the menu incase formatting gets messed uo
        return @the_menu
   end
  
end

class Reciept
    def initialize(order)
    @order = order #is a instance of the order class and should return the items
    end

    def reciept{
        final_cost = 0
        #returns a itemized recipt of all the items and there cost then a final value
    }
  
end
```

#