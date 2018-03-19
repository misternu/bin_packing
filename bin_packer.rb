require_relative 'cuboid'

# Computes the ways to pack rectangular objects in rectangular bins
class BinPacker
  def self.total_item_volume(items)
    Cuboid.to_cuboids(items)
          .map(&:volume)
          .reduce(&:+)
  end
end
