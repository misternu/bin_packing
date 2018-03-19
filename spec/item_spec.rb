require_relative '../item'

describe Item do
  describe '.initialize' do
    it 'takes the dimensions as an array' do
      item1 = Item.new(dimensions: [1, 2, 3])
      expect(item1.x).to eq 1
      expect(item1.y).to eq 2
      expect(item1.z).to eq 3
    end
    it 'takes the dimensions separately' do
      item2 = Item.new(x: 4, y: 5, z: 6)
      expect(item2.x).to eq 4
      expect(item2.y).to eq 5
      expect(item2.z).to eq 6
    end
  end
  describe '#dimensions' do
    it 'returns an array of the dimensions of an object' do
      item = Item.new(dimensions: [4, 2, 8])
      expect(item.dimensions).to eq [4, 2, 8]
    end
  end
  describe '#volume' do
    it 'returns the volume of the object' do
      item = Item.new(dimensions: [2, 2, 2])
      expect(item.volume).to eq 8
      item2 = Item.new(dimensions: [1, 10, 10])
      expect(item2.volume).to eq 100
    end
  end
end
