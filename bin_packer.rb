# Computes the ways to pack rectangular objects in rectangular bins
class BinPacker
  def self.total_item_volume(items)
    items.map { |dimensions| Item.new(dimensions: dimensions) }
         .map(&:volume)
         .reduce(&:+)
  end
end
