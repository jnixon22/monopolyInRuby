# A Player can choose to end the game
class EndGameOption

  def initialize(gameEngine)
    @gameEngine = gameEngine
  end

  def description
    "End Game"
  end

  def execute(player)
    @gameEngine.endGame
    puts "#{player.name} ended game"
  end
end