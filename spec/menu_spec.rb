require 'menu.rb'
RSpec.describe Menu do
    test_menu = {
        chips: 2.99 ,
        pizza: 3.99 ,
        burger: 5.99 ,
        salmon: 6 ,
        praws: 2.47 ,
        steak: 11.99 ,
        lamb_chops: 8.99
       }
    it 'Should create a instance of menu' do
       expect(menu = Menu.new).to eq(menu)
    end
    it 'Should return the menu' do
        the_menu = Menu.new
        expect(the_menu.menu).to eq(test_menu)
     end
end