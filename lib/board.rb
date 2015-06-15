require_relative 'ship'

class Board



  attr_reader :ships, :board

  def initialize
    @board = [['w','w'],
              ['w','w']]

    @ships = {'destroyer' => 2, 'battleship' => 4} #Why can't we use the symbol creator?
  end

  def place(ship, x, y)
    # fail 'Ship already placed there!' if @board[x-1..ships[ship]+1].any? {|element| element!='w'}
    # fail 'Cannot place ship outside board!' if ((x-1)+ships[ship])>@board.length
     @board[[x-1,y-1]..[[ships[ship]+1],y-1]] = create_array(ship)
     @board
  end

  def create_array(ship)
      (ship[0]*ships[ship]).split('')
  end

  def strike(target)
    @board[target-1]=='w' ? @board[target-1] = 'w' : @board[target-1] = 'H' #better way to write?
    @board[target-1]=='H' ? 'HIT!' : 'MISS!'
  end
end
