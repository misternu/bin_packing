require_relative '../bin_packer'
describe BinPacker do
  describe '.item_volume' do
    it 'returns the volume of the item' do
      expect(BinPacker.item_volume([2, 2, 2])).to eq 8
      expect(BinPacker.item_volume([1, 10, 10])).to eq 100
      expect(BinPacker.item_volume([10, 10, 10])).to eq 1000
    end
  end
  describe '.total_item_volume' do
    it 'returns the total volume of the items' do
      items = [[1, 1, 1], [2, 2, 2], [10, 10, 10]]
      expect(BinPacker.total_item_volume(items)).to eq 1009
    end
  end
end
