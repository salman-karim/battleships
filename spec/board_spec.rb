require 'board'
require 'ship'

describe Board do

  describe 'place' do
    it 'Places the ship on the board at a specific point' do
      subject.place('destroyer',2)
      expect(subject.board[1..3]).to eq ['d','d','d']
    end

    it 'Doesn\'t allow ships to overlap' do
      subject.place('destroyer',2)
      expect{subject.place('battleship',3)}.to raise_error 'Ship already placed there!'
    end

    it 'Doesn\'t allow ships to be placed outside the board' do
      expect{subject.place('battleship',10)}.to raise_error 'Cannot place ship outside board!'
    end
  end

  describe 'strike' do
    it 'can hit a ship placed on the board' do
      subject.place('destroyer',2)
      expect(subject.strike(3)).to eq 'HIT!'
    end

    it 'returns a miss if ship is not hit' do
      subject.place('destroyer',2)
      expect(subject.strike(7)).to eq 'MISS!'
    end
  end




end
