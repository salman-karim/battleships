require 'ship'
require 'player'

describe Ship do

  before(:each) do
    @@count = { destroyer: 0, submarine: 0, cruiser: 0, battleship: 0, aircraft_carrier: 0}
    allow($stdout).to receive(:puts)
  end

  describe 'create' do
    it 'should be able to accept type when enterd' do
      expect(Ship.create(:destroyer)).to be_a(Ship)
    end

    it 'should fail if type is not a valid ship' do
      expect{Ship.create(:yatch)}.to raise_error 'Please enter a valid ship'
    end
  end

  describe 'initialize' do
    it 'should have create a ship with a fixed armour' do
      sub = Ship.create(:submarine)
      expect(sub.armour).to eq 3
    end

    it 'should have create a ship with a fixed size' do
      sub = Ship.create(:submarine)
      expect(sub.size).to eq 3
    end
  end

  describe 'hit_ship' do

    it 'should damage a ship' do
      sub = Ship.create(:submarine)
      sub.hit_ship
      expect(sub.armour).to eq 2
    end

    it 'should sink a ship' do
      player1 = Player.new
      board1 = Board.new
      board1.place_h(player1.submarine,'A1')
      board1.strike('A1')
      board1.strike('A2')
      expect(board1.strike('A3')).to eq "submarine sunk!"
    end

    # add test to make sure can't hit H again
  end
end


#
#
#
# end
