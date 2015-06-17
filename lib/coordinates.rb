class Coordinates

attr_accessor :y_coordinate, :x_coordinate
attr_reader :rise, :run

def initialize
  @rise = ('A'..'J').zip(0..9).to_h
  @run = (1..10).zip(0..9).to_h
end


def convert_coordinates(position)
  self.y_coordinate = rise[(position[0]).to_s]
  self.x_coordinate = run[(position[1..2]).to_i]
end

def lat_array(ship,position)
  convert_coordinates(position)
  lat_array = (y_coordinate...y_coordinate+ship.size).to_a
end

def long_array(ship,position)
  convert_coordinates(position)
  long_array = ((x_coordinate.to_s)*(ship.size)).split('').map! {|s| s.to_i}
end

def combined_lat_long(lat_array, long_array)
  combined_lat_long = lat_array.zip(long_array)
end
