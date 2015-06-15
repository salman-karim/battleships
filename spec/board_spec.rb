

require_relative '.././lib/ship.rb'

describe Board do

  describe 'place ship' do
    it 'places a ship on the board' do
      ship = Ship.new
      board.place(ship)
      expect(@ships).to include(ship)
    end
  end

end
