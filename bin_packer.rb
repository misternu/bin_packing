require_relative 'cuboid'

# Computes the ways to pack rectangular objects in rectangular bins
class BinPacker
  def self.can_fit(box, items)
    box = Cuboid.new(dimensions: box)
    items = Cuboid.to_cuboids(items)
    # sanity check using total volume of items
    Cuboid.total_volume(items) < box.volume
  end
end
