require 'ship'

describe Ship do

  describe 'create' do
    it 'should be able to accept type when enterd' do
      expect(Ship.create(:destroyer)).to be_a(Ship)
    end

    it 'should fail if type is not a valid ship' do
      expect{Ship.create(:yatch)}.to raise_error 'Please enter a valid ship'
    end
  end

  describe 'initialize' do
    it 'should have create a ship with a fixed armour' do
      sub = Ship.create(:submarine)
      expect(sub.armour).to eq 3
    end

    it 'should have create a ship with a fixed size' do
      sub = Ship.create(:submarine)
      expect(sub.size).to eq 3
    end
  end

  describe 'hit_ship' do

    it 'should damage a ship' do
      sub = Ship.create(:submarine)
      sub.hit_ship
      expect(sub.armour).to eq 2
    end

    it 'should sink a ship' do
      sub = Ship.create(:submarine)
      (sub.size-1).times {sub.hit_ship}
      expect(sub.hit_ship).to eq "submarine sunk!"
    end
  end
end


#
#
#
# end
