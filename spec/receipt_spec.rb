require 'receipt.rb'
RSpec.describe Receipt do 
    it "should be able to mock initalize the order class" do
        mock_order_class = double("order_class")
        allow(mock_order_class).to receive(:current_order).and_return("burger" => 5.99,"chips" => 2.99,"pizza" => 3.99,)
        expect(receipt = Receipt.new(mock_order_class)).to be_instance_of(Receipt)

    end
    it "should be able to mock initalize the order class and return a reciept" do
        mock_order_class = double("order_class")
        allow(mock_order_class).to receive(:current_order).and_return("burger" => 5.99,"chips" => 2.99,"pizza" => 3.99,)
        receipt = Receipt.new(mock_order_class)
        expect(receipt.total).to eq("You have orderd burger for $5.99\nYou have orderd chips for $2.99\nYou have orderd pizza for $3.99\nThe total comes down to: $12.97\nThank you for your time please come back again soon." )

    end

end