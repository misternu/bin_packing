require_relative '../bin_packer'
describe BinPacker do
  describe '.total_item_volume' do
    it 'returns the total volume of the items' do
      items = [[1, 1, 1], [2, 2, 2], [10, 10, 10]]
      expect(BinPacker.total_item_volume(items)).to eq 1009
    end
  end
end
