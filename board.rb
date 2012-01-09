require File.dirname(__FILE__) + "/player"

# Represents the Monopoly Game Board
class Board
  def initialize(squares, players)
    @squares = squares
    # Initialize players to first square
    @playerToPosition = {}
    players.each{ |player| @playerToPosition[player] = 0}
  end

  # Move a player's piece forward by roll, wrapping over the squares array implementation
  def movePiece(player, roll)
    position = @playerToPosition[player]
    position += roll
    # wrap to beginning of array if we've exceeded it'
    if (position >= @squares.length)
      position = position % @squares.length
    end
    @playerToPosition[player] = position
    @squares[position]
  end

  def position(player)
    @playerToPosition[player]
  end

end