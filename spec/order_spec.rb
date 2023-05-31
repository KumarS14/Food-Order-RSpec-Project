require 'order.rb'
RSpec.describe Order do
    mock_menu = {
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
        allow(mock_order).to receive(:menu).and_return(mock_menu)
        expect(order = Order.new(mock_order)).to be_instance_of(Order)
    end
    it 'Should mock menu going into order' do
        mock_order = double(:the_menu)
        allow(mock_order).to receive(:menu).and_return(mock_menu)
        order = Order.new(mock_order)
        expect{order.place_order("fish")}.to raise_error("This item does not exist")
    end
    it 'Should mock menu going into order' do
        mock_order = double(:the_menu)
        allow(mock_order).to receive(:menu).and_return(mock_menu)
        order = Order.new(mock_order)
        order.place_order("chips")
       expect(order.current_order).to eq("chips" => 2.99,)
    end
end