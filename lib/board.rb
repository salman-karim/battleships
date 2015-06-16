class Board

  attr_reader :ships, :grid, :alphabet

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
    @alphabet = ('a'..'z').to_a

  end

  def place_horizontal(ship,y,x)
    # fail 'Cannot place ship outside board!' if ((x-1)+ships[ship])>@board.length
     x = @alphabet.index(x)

     fail 'Ship already placed there!' if @grid[y-1][(x)..(x+ships[ship])].any? { |element| element != 'w' }
     @grid[y-1][(x)..(x+ships[ship])] = create_array(ship)
  end

  def place_vertical(ship,y,x)
    # fail 'Ship already placed there!' if @board[x-1..ships[ship]+1].any? {|element| element!='w'}
    # fail 'Cannot place ship outside board!' if ((x-1)+ships[ship])>@board.length
    combine_y_x(ship,y,x)
    @grid
  end


  def convert_y(ship,y)
    y_array = (y-1...y+ships[ship]-1).to_a
    # y_array_of_arrays = y_array.each {|y| y.to_a}
  end

  def convert_x(ship,x)
    x = @alphabet.index(x)
    x_array = ((x.to_s)*ships[ship]).split('').map! {|s| s.to_i}
    # x_array_of_arrays = x_array {|x| x.to_a}
  end

  def combine_y_x(ship,y,x)
     z = convert_y(ship,y).zip(convert_x(ship,x))
     fail 'Ship already placed there!' if z.any? { |y,x| @grid[y][x] != 'w' }
     z.each { |y,x| @grid[y][x] = ship[0] }
  end

  # z.each do |x|








  def create_array(ship)
      (ship[0]*ships[ship]).split('')
  end


  # destroyer = Ship.New([s,s])
  # cruiser = Ship.New([s,s,s])
  # submarine = Ship.New([s,s,s])
  # battleship = Ship.New([s,s,s,s])
  # aircraft_carrier = Ship.New([s,s,s,s,s])

end
