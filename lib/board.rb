require_relative 'ship'

class Board



  attr_reader :ships

  def initialize
    @board = ['w','w','w','w','w','w','w','w','w','w']
    @ships = {'destroyer' => 3, 'battleship' => 4}
  end

  def place(ship, point)
     @board[point-1..ships[ship]+1] = create_array(ship, point)
  end

  def create_array(ship, point)
      (ship[0]*ships[ship]).split('')
  end

  def strike(position)
    @board.include?(position) ? 'HIT!' : 'MISS!'
  end

end
