require 'board'
require 'ship'

describe Board do

  describe 'place ship' do
    it 'places a ship on the board' do
      ship = Ship.new("A4")
      subject.place(ship)
      expect(subject.ships).to include(ship)
    end
  end
end