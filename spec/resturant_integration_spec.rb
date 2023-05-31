require 'menu.rb'
require 'order.rb'
require 'receipt.rb'
RSpec.describe 'Integration' do
    it 'should allow order to take a instance of the menu class' do
        the_menu = Menu.new
        expect(item_order = Order.new(the_menu)).to be_instance_of(Order)
    end
    
 
end