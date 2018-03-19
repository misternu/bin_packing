# Class to represent item properties
class Cuboid
  attr_reader :width, :height, :depth
  def initialize(options)
    if options[:dimensions]
      @width, @height, @depth = options.fetch(:dimensions)
    else
      @width = options.fetch(:width, 0)
      @height = options.fetch(:height, 0)
      @depth = options.fetch(:depth, 0)
    end
  end

  def self.to_cuboids(items)
    items.map { |dimensions| Cuboid.new(dimensions: dimensions) }
  end

  def self.total_volume(cuboids)
    cuboids.map(&:volume).reduce(&:+)
  end

  def dimensions
    [@width, @height, @depth]
  end

  def volume
    dimensions.reduce(&:*)
  end
end
