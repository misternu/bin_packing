require_relative '../cuboid'

describe Cuboid do
  describe '.initialize' do
    it 'takes the dimensions as an array' do
      cuboid1 = Cuboid.new(dimensions: [1, 2, 3])
      expect(cuboid1.width).to eq 1
      expect(cuboid1.height).to eq 2
      expect(cuboid1.depth).to eq 3
    end
    it 'takes the dimensions separately' do
      cuboid2 = Cuboid.new(width: 4, height: 5, depth: 6)
      expect(cuboid2.width).to eq 4
      expect(cuboid2.height).to eq 5
      expect(cuboid2.depth).to eq 6
    end
  end
  describe '.to_cuboids' do
    it 'takes an array of array of numbers and returns an array of Cuboids' do
      cuboids = Cuboid.to_cuboids([[2, 2, 2], [1, 10, 10], [10, 10, 10]])
      expect(cuboids).to all be_a Cuboid
    end
  end
  describe '.total_volume' do
    it 'returns the total volume of the cuboids' do
      cuboids = Cuboid.to_cuboids([[2, 2, 2], [1, 10, 10], [10, 10, 10]])
      expect(Cuboid.total_volume(cuboids)).to eq 1108
    end
  end
  describe '#dimensions' do
    it 'returns an array of the dimensions of an object' do
      cuboid = Cuboid.new(dimensions: [4, 2, 8])
      expect(cuboid.dimensions).to eq [4, 2, 8]
    end
  end
  describe '#volume' do
    it 'returns the volume of the object' do
      cuboid = Cuboid.new(dimensions: [2, 2, 2])
      expect(cuboid.volume).to eq 8
      cuboid2 = Cuboid.new(dimensions: [1, 10, 10])
      expect(cuboid2.volume).to eq 100
    end
  end
  describe '#inside?' do
    it 'returns true if no corner of cuboid goes outside passed cuboid' do
      outside = Cuboid.new(dimensions: [10, 10, 10])
      inside = Cuboid.new(dimensions: [9, 9, 9])
      expect(inside.inside?(outside)).to be true
    end
    it 'returns false if it passes outside' do
      outside = Cuboid.new(dimensions: [2, 2, 2])
      inside = Cuboid.new(dimensions: [2, 2, 2], position: [1, 0, 0])
      expect(inside.inside?(outside)).to be false
    end
  end
end
