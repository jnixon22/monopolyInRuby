require File.dirname(__FILE__) + "/end_turn_option"
require File.dirname(__FILE__) + "/end_game_option"
require File.dirname(__FILE__) + "/board"

# Controls the turns for the game
class GameEngine

  def initialize(board, players)
    @board = board
    @players = players
    @gameOver = false
  end

  def start
    # These options are always available to players
    # Maps from input command to an executing option
    @defaultOptions = {}
    @defaultOptions["E"] = EndTurnOption.new
    @defaultOptions["Q"] = EndGameOption.new(self)

    while !@gameOver
       @players.each{ |player|
          dice1 = rollDice
          dice2 = rollDice
          square = @board.movePiece(player, dice1 + dice2)
          puts "-----------------------------------------"
          puts "#{player.name}'s Turn"
          puts "Rolled [#{dice1}][#{dice2}]"
          puts "Landed on #{square}"
          options = getPlayerOptions
          printOptions(options)
          input = gets.strip
          option = options[input]
          option.execute(player)
          if @gameOver
            break
          end
       }
    end
  end

  def endGame
    @gameOver = true
  end

  def gameOver
    @gameOver
  end

  def printOptions(options)
    options.each{|code, option| puts "#{code} - #{option.description}"}
  end

  def getPlayerOptions()
    # copy default options
    options = {}
    @defaultOptions.each{|code, option| options[code] = option}
    # Add more options
    options
  end

  def rollDice
    rand(6) + 1
  end

end