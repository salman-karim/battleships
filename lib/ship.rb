class Ship

  SIZES = { destroyer: 2, submarine: 3, cruiser: 3, battleship: 4, aircraft_carrier: 5}

  attr_accessor :type, :size, :armour

   def self.create(shiptype)
       fail "Please enter a valid ship" if SIZES.include?(shiptype) == false
       Ship.new (shiptype)
   end

  def initialize(type)
    @type = type
    @size = SIZES[type]
    @armour = SIZES[type]
  end

  def hit_ship
    self.armour -= 1
    puts "#{type} armour = #{armour}"
    return "#{type} sunk!" if armour == 0
  end

end
