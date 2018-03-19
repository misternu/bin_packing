# Computes the ways to pack rectangular objects in rectangular bins
class BinPacker
  def self.total_item_volume(items)
    Item.to_items(items)
        .map(&:volume)
        .reduce(&:+)
  end
end
