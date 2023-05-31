require 'order.rb'
RSpec.describe Order do
    test_menu = {
        chips: 2.99 ,
        pizza: 3.99 ,
        burger: 5.99 ,
        salmon: 6 ,
        praws: 2.47 ,
        steak: 11.99 ,
        lamb_chops: 8.99
       }
    it 'Should mock menu going into order' do
        mock_order = double(:the_menu)
        allow(mock_order).to receive(:menu).and_return(test_menu)
        expect(order = Order.new(mock_order)).to be_instance_of(Order)
    end
end