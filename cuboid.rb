# Class to represent item properties
class Cuboid
  attr_reader :width, :height, :depth, :x, :y, :z
  def initialize(options)
    if options[:dimensions]
      @width, @height, @depth = options.fetch(:dimensions)
    else
      @width = options.fetch(:width, 0)
      @height = options.fetch(:height, 0)
      @depth = options.fetch(:depth, 0)
    end
    if options[:position]
      @x, @y, @z = options.fetch(:position)
    else
      # default position is at origin
      @x = options.fetch(:x, 0)
      @y = options.fetch(:y, 0)
      @z = options.fetch(:z, 0)
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

  def inside?(other)
    x_range = (other.x..other.x + other.width)
    y_range = (other.y..other.y + other.height)
    z_range = (other.z..other.z + other.depth)
    x_range.include?(@x) &&
      x_range.include?(@x + width) &&
      y_range.include?(@y) &&
      y_range.include?(@y + height) &&
      z_range.include?(@z) &&
      z_range.include?(@z + depth)
  end
end
