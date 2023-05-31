require 'receipt.rb'
RSpec.describe Receipt do 
    it "should be able to mock initalize the order class" do
        mock_order_class = double("order_class")
        allow(mock_order_class).to receive(:current_order).and_return("burger" => 5.99,"chips" => 2.99,"pizza" => 3.99,)
        expect(receipt = Receipt.new(mock_order_class)).to be_instance_of(Receipt)

    end

end