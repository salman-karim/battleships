require 'board'

describe Board do

  describe 'place_h' do
    it 'Places the ship horizontally on the board at a specific point' do
      destroyer = double :destroyer, size: 2
      subject.place_h(destroyer,'B2')
      expect(subject.grid[1][1..2]).to eq [destroyer,destroyer]
    end

    it 'Doesn\'t allow ships to overlap' do
      destroyer = double :destroyer, size: 2
      submarine = double :submarine, size: 3
      subject.place_v(destroyer,'B2')
      expect{subject.place_h(submarine,'B2')}.to raise_error 'Ship already placed there!'
    end

    xit 'Doesn\'t allow ships to be placed outside the board' do
      expect{subject.place_horizontal('battleship',2,'i')}.to raise_error 'Cannot place ship outside board!'
    end
  end

  describe 'place_vertical' do
    xit 'Places the ship vertically on the board at a specific point' do
      subject.place_vertical('submarine',2,'d')
      expect([subject.grid[1][3], subject.grid[2][3], subject.grid[3][3]]).to eq ['s','s','s']
    end

    xit 'Doesn\'t allow ships to overlap' do
      subject.place_vertical('battleship',2,'d')
      expect{subject.place_horizontal('aircraft carrier',4,'c')}.to raise_error 'Ship already placed there!'
    end

    xit 'Doesn\'t allow ships to be placed outside the board' do
      expect{subject.place_vertical('battleship',9,'a')}.to raise_error 'Cannot place ship outside board!'
    end
  end


  describe 'strike' do

    xit 'can hit a ship placed on the board' do
      subject.place_horizontal('destroyer',1,'a')
      subject.strike(1,'a')
      expect(subject.grid[0][0]).to eq 'H'
    end

    xit 'reports when a ship is hit' do
      subject.place_horizontal('destroyer',1,'a')
      expect(subject.strike(1,'a')).to eq 'HIT!'
    end

    xit 'misses when a ship is not hit' do
      subject.place_horizontal('destroyer',1,'a')
      subject.strike(5,'d')
      expect(subject.grid[4][3]).to eq 'M'
    end

    xit 'reports when a ship is hit' do
      subject.place_horizontal('destroyer',1,'a')
      expect(subject.strike(5,'d')).to eq 'MISS!'
    end

    # it 'reports when a ship is hit' do
    #   subject.place_horizontal('destroyer',1,'a')
    #   expect(subject.report_strike(1,'a')).to eq 'HIT!'
    # end



  end


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

end
