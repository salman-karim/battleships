require_relative 'ship'

class Board

  attr_reader :ships

  def initialize
    @ships = []
  end

  def place(ship)
    @ships <<ship.position
  end

  def strike(position)
    @ships.include?(position) ? 'HIT!' : 'MISS!'
  end

end
