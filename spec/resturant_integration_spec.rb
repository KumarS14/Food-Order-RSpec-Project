require 'menu.rb'
require 'order.rb'
require 'receipt.rb'
RSpec.describe 'Integration' do
    it 'should allow order to take a instance of the menu class' do
        the_menu = Menu.new
        expect(item_order = Order.new(the_menu)).to be_instance_of(Order)
    end
    it 'should allow the user to order an item and fail as the item does not exist' do
        the_menu = Menu.new
        item_order = Order.new(the_menu)
        #item_order.order("biscuit")
        expect { item_order.place_order("biscuit") }.to raise_error('This item does not exist')
    end
      it 'should allow the user to order an item ' do
        the_menu = Menu.new
        item_order = Order.new(the_menu)
         item_order.place_order("chips")
         expect(item_order.current_order).to eq("chips" => 2.99,)
      end
      it 'should allow the user to order a item' do
        the_menu = Menu.new
        item_order = Order.new(the_menu)
         item_order.place_order("chips")
         item_order.place_order("burger")
         item_order.place_order("pizza")
         expect(item_order.current_order).to include("burger")
         expect(item_order.current_order).to include("chips")
         expect(item_order.current_order).to include("pizza")
      end
    it 'should allow the user to order two valid items but not the third as that is not on the menu' do
        the_menu = Menu.new
        item_order = Order.new(the_menu)
         item_order.place_order("chips")
         item_order.place_order("burger")
         expect { item_order.place_order("biscuit") }.to raise_error('This item does not exist')
         expect(item_order.current_order).to include("chips")
         expect(item_order.current_order).to include("burger")
    end
    it 'should allow the user to order three valid items and let them remove one of the items' do
        the_menu = Menu.new
        item_order = Order.new(the_menu)
        item_order.place_order("chips")
        item_order.place_order("burger")
        item_order.place_order("pizza")
        item_order.place_order("steak")
        item_order.delete_item("pizza")
        expect(item_order.current_order).to include("burger")
        expect(item_order.current_order).to include("chips")
        expect(item_order.current_order).to include("steak")
        
    end
     
     
    
 
end