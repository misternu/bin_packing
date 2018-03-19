require_relative '../bin_packer'

describe BinPacker do
  describe '.can_fit' do
    it 'returns false if the volume of items is too large' do
      box = [10, 10, 10]
      items = [[8, 8, 8], [8, 8, 8]]
      expect(BinPacker.can_fit(box, items)).to be false
    end
  end
end
