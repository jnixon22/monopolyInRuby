# The starting point for the game
require File.dirname(__FILE__) + "/player"
require File.dirname(__FILE__) + "/property"
require File.dirname(__FILE__) + "/board"
require File.dirname(__FILE__) + "/game_engine"

players = [Player.new("Justin"), Player.new("Alex")]

squares = [
        Property.new("Mediterranean Ave.", :INDIGO, 60),
        Property.new("Baltic Ave.", :INDIGO, 60),
        Property.new("Oriental Ave.", :LIGHT_BLUE, 100),
        Property.new("Vermont Ave.", :LIGHT_BLUE, 100),
        Property.new("Connecticut Ave.", :LIGHT_BLUE, 120),
        Property.new("St. Charles Place", :VIOLET, 140),
        Property.new("States Ave.", :VIOLET, 140),
        Property.new("Virginia Ave.", :VIOLET, 160),
        Property.new("St. James Place", :ORANGE, 180),
        Property.new("Tennessee Ave.", :ORANGE, 180),
        Property.new("New York Ave.", :ORANGE, 200),
        Property.new("Kentucky Ave.", :RED, 220),
        Property.new("Indiana Ave.", :RED, 220),
        Property.new("Illinois Ave.", :RED, 240),
        Property.new("Atlantic Ave.", :YELLOW, 260),
        Property.new("Ventnor Ave.", :YELLOW, 260),
        Property.new("Marvin Gardens", :YELLOW, 280)
]

board = Board.new(squares, players)

gameEngine  = GameEngine.new(board, players)
gameEngine.start

