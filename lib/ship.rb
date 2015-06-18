class Ship

  SIZES = { destroyer: 2, submarine: 3, cruiser: 3, battleship: 4, aircraft_carrier: 5}

  @@count = { destroyer: 0, submarine: 0, cruiser: 0, battleship: 0, aircraft_carrier: 0}

  attr_accessor :type, :size, :armour

  def self.create(shiptype)
    fail "Please enter a valid ship" if SIZES.include?(shiptype) == false
    Ship.new (shiptype)
  end

  def self.count
    @@count
  end

  def initialize(type)
    fail "Max no. of #{type}s created" if @@count[type] == 2
    @@count[type] += 1
    @type = type
    @size = SIZES[type]
    @armour = SIZES[type]
  end

  def hit_ship
    self.armour -= 1
    puts "#{type} armour = #{armour}"
    return "#{type} sunk!" if self.armour == 0
  end

end
