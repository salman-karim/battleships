require 'board'
require 'ship'

describe Board do

  describe 'strike' do
    it 'can hit a ship placed on the board' do
      ship = double :ship, position: 'A4'
      subject.place ship
      expect(subject.strike(ship.position)).to eq 'HIT!'
    end

    it 'returns a miss if ship is not hit' do
      expect(subject.strike("A1")).to eq 'MISS!'
    end
  end

  describe 'place ship' do
    it 'places a ship on the board' do
      ship = double :ship, position: 'A4'
      subject.place ship
      expect(subject.board).to include("A4")
    end
  end
end
