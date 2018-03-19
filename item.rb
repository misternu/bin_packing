# Class to represent item properties
class Item
  attr_reader :x, :y, :z
  def initialize(options)
    if options[:dimensions]
      @x, @y, @z = options.fetch(:dimensions)
    else
      @x = options.fetch(:x, 0)
      @y = options.fetch(:y, 0)
      @z = options.fetch(:z, 0)
    end
  end

  def self.to_items(items)
    items.map { |dimensions| Item.new(dimensions: dimensions) }
  end

  def dimensions
    [@x, @y, @z]
  end

  def volume
    dimensions.reduce(&:*)
  end
end
