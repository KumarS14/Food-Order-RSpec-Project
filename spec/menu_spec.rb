require 'menu.rb'
RSpec.describe Menu do
    it 'Should create a instance of menu' do
       expect(menu = Menu.new).to eq(menu)
    end
end