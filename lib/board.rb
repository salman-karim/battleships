require_relative 'ship'

class Board

  attr_reader :ships

  def initialize
    @ships = []
  end

  def place(ship)
  	@ships <<ship
  end

  def strike(position)
    'HIT!'
  end

end
