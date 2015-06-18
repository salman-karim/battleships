require_relative 'ship'

class Player

  attr_reader :destroyer, :submarine, :cruiser, :battleship, :aircraft_carrier

  def initialize
    @destroyer = Ship.create (:destroyer)
    @submarine = Ship.create (:submarine)
    @cruiser = Ship.create (:cruiser)
    @battleship = Ship.create (:battleship)
    @aircraft_carrier = Ship.create (:aircraft_carrier)
  end

  # def place(shiptype, position, direction)
  #   board.place_h(ships.shiptype, position) if direction = 'horizontal'
  #   place_v(ships.shiptype, position)

end
