require 'board'

describe Board do

  # describe 'place' do
  #   it 'Places the ship on the board at a specific point' do
  #     subject.place('destroyer',2)
  #     expect(subject.board[1..3]).to eq ['d','d','d']
  #   end

    it 'Doesn\'t allow ships to overlap' do
      subject.place_horizontal('battleship',5,'d')
      expect{subject.place_vertical('submarine',3,'f')}.to raise_error 'Ship already placed there!'
    end

    it 'Doesn\'t allow ships to overlap' do
      subject.place_vertical('battleship',2,'d')
      expect{subject.place_horizontal('aircraft carrier',4,'c')}.to raise_error 'Ship already placed there!'
    end

    xit 'Doesn\'t allow ships to be placed outside the board'
      # expect{subject.place('battleship',10)}.to raise_error 'Cannot place ship outside board!'

end

  # describe 'strike' do
  #   it 'can hit a ship placed on the board' do
  #     subject.place('destroyer',2)
  #     expect(subject.strike(3)).to eq 'HIT!'
  #   end
  #
  #   it 'returns a miss if ship is not hit' do
  #     subject.place('destroyer',2)
  #     expect(subject.strike(7)).to eq 'MISS!'
  #   end
  #
  #   it 'records "H" if ship is hit' do
  #     subject.place('destroyer', 2)
  #     subject.strike(3)
  #     expect(subject.board[2]).to eq 'H'
  #   end
