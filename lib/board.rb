require_relative 'ships'

class Board

  attr_accessor :y, :x
  attr_reader :ships, :grid, :alphabet, :rise, :run

  def initialize
    @grid = [['w','w','w','w','w','w','w','w','w','w'],
             ['w','w','w','w','w','w','w','w','w','w'],
             ['w','w','w','w','w','w','w','w','w','w'],
             ['w','w','w','w','w','w','w','w','w','w'],
             ['w','w','w','w','w','w','w','w','w','w'],
             ['w','w','w','w','w','w','w','w','w','w'],
             ['w','w','w','w','w','w','w','w','w','w'],
             ['w','w','w','w','w','w','w','w','w','w'],
             ['w','w','w','w','w','w','w','w','w','w'],
             ['w','w','w','w','w','w','w','w','w','w'],]

    @ships = {'destroyer' => 2, 'cruiser' => 3, 'submarine' => 3, 'battleship' => 4, 'aircraft carrier' => 5} #Why can't we use the symbol creator?
    # @coordinates_converter = Coordinates.New
    @rise = ('A'..'J').zip(0..9).to_h
    @run = (1..10).zip(0..9).to_h
    @y_position
    @x_position

  end

  def convert_coordinates(position)
    @y_position = @rise[(position[0]).to_s]
    @x_position = @run[(position[1]).to_i]

  end

  def place_h(ship,position)
    convert_coordinates(position)
    @grid[@y_position][@x_position..(@x_position+ship.size)].each {|element| element.replace(ship.character)}
    @grid
  end

  def place_v(ship,position)
  end
end



    #  grid_place = @coordinates_converter(user_coordinates)
#     # #  fail 'Cannot place ship outside board!' if ((x-1)+ships[ship])>@grid.length
#     # #  fail 'Ship already placed there!' if @grid[y-1][(x)..(x+ships[ship])].any? { |element| element != 'w' }
#     #  @grid[grid_place(0)][grid_place(1)...grid_place(1)+ship[ships]] = create_array(ship)
#     # #    (x)...(x+ships[ship])] = create_array(ship)
#     #  @grid
#   end
#
#   def place_vertical(ship,y,x)
#     fail 'Cannot place ship outside board!' if ((y-1)+ships[ship])>@grid.length
#     combine_y_x(ship,y,x)
#     @grid
#   end
#
#   def convert_y(ship,y)
#     y_array = (y-1...y+ships[ship]-1).to_a
#     # y_array_of_arrays = y_array.each {|y| y.to_a}
#   end
#
#   def convert_x(ship,x)
#     x = @alphabet.index(x)
#     x_array = ((x.to_s)*ships[ship]).split('').map! {|s| s.to_i}
#     # x_array_of_arrays = x_array {|x| x.to_a}
#   end
#
#   def combine_y_x(ship,y,x)
#      z = convert_y(ship,y).zip(convert_x(ship,x))
#      fail 'Ship already placed there!' if z.any? { |y,x| @grid[y][x] != 'w' }
#      z.each { |y,x| @grid[y][x] = ship[0] }
#   end
#
#   def strike(y,x)
#     x_int = @alphabet.index(x)
#     @grid[y-1][x_int] != ('w' || 'M') ? @grid[y-1][x_int] = 'H' : @grid[y-1][x_int] = 'M'
#     # || @grid[y-1][x_int] != 'M'
#     report_strike(y,x_int)
#   end
#
#   def report_strike(y,x)
#     @grid[y-1][x] == 'H' ? 'HIT!' : 'MISS!'
#   end
#
#
#   def create_array(ship)
#       (ship[0]*ships[ship]).split('')
#   end
#
#
#   # destroyer = Ship.New([s,s])
#   # cruiser = Ship.New([s,s,s])
#   # submarine = Ship.New([s,s,s])
#   # battleship = Ship.New([s,s,s,s])
#   # aircraft_carrier = Ship.New([s,s,s,s,s])
#
# end
