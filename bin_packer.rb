# Computes the ways to pack rectangular objects in rectangular bins
class BinPacker
  def self.total_item_volume(items)
    items.map { |item| item_volume(item) }
         .reduce(&:+)
  end

  def self.item_volume(item)
    item.reduce(&:*) # the volume is a product of its dimensions
  end
end
