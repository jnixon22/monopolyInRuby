require File.dirname(__FILE__) + "/default_square"

# Represents a property square that can be purchased
class Property < DefaultSquare

  def initialize(name, color ,cost)
    super(name)
    @color = color
    @cost = cost
  end

  def to_s
    "Property{name='#{@name}' color='#{@color}' cost=#{@cost}}"
  end

end