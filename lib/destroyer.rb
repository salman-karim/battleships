class Destroyer

  def initialize
    @ships = {'destroyer' => 2}
  end

  attr_reader :grid, :alphabet

  def initialize
    @grid = [['x','x','x','x','x','x','x','x','x','x'],
             ['x','x','x','x','x','x','x','x','x','x'],
             ['x','x','x','x','x','x','x','x','x','x'],
             ['x','x','x','x','x','x','x','x','x','x'],
             ['x','x','x','x','x','x','x','x','x','x'],
             ['x','x','x','x','x','x','x','x','x','x'],
             ['x','x','x','x','x','x','x','x','x','x'],
             ['x','x','x','x','x','x','x','x','x','x'],
             ['x','x','x','x','x','x','x','x','x','x'],
             ['x','x','x','x','x','x','x','x','x','x'],]

    @alphabet = ('a'..'z').to_a

  end

  def place_horizontal(y,x)
    # fail 'Ship already placed there!' if @board[x-1..ships[ship]+1].any? {|element| element!='w'}
    # fail 'Cannot place ship outside board!' if ((x-1)+ships[ship])>@board.length
     x = @alphabet.index(x)
     @grid[y-1][(x)..(x+2)] = ['d','d']
  end

  def place_vertical(y,x)
    # fail 'Ship already placed there!' if @board[x-1..ships[ship]+1].any? {|element| element!='w'}
    # fail 'Cannot place ship outside board!' if ((x-1)+ships[ship])>@board.length
    combine_y_x(y,x)
    @grid
  end


  def convert_y(y)
    y_array = (y-1...y+1).to_a
    # y_array_of_arrays = y_array.each {|y| y.to_a}
  end

  def convert_x(x)
    x = @alphabet.index(x)
    x_array = ((x.to_s)*2).split('').map! {|s| s.to_i}
    # x_array_of_arrays = x_array {|x| x.to_a}
  end

  def combine_y_x(y,x)
     z = convert_y(y).zip(convert_x(x))
     z.each { |y,x| @grid[y][x] = 'd' }
  end

  def create_array(ship)
      ('d'*2).split('')
  end


  # destroyer = Ship.New([s,s])
  # cruiser = Ship.New([s,s,s])
  # submarine = Ship.New([s,s,s])
  # battleship = Ship.New([s,s,s,s])
  # aircraft_carrier = Ship.New([s,s,s,s,s])

end
