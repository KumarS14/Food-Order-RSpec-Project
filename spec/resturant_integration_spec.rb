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
        expect { item_order.order("biscuit") }.to raise_error('This item does not exist')
      end
    
 
end