require 'board'
require 'ship'

describe Board do

  describe 'strike' do
    it 'can hit a ship placed on the board' do
      ship = Ship.new('A4')
      subject.place(ship)
      expect(subject.strike(ship.position)).to eq 'HIT!'
    end
  end


  describe 'place ship' do
    it 'places a ship on the board' do
      ship = Ship.new("A4")
      subject.place(ship)
      expect(subject.ships).to include(ship)
    end
  end
end
