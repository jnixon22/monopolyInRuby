# A Player can chose to end their turn
class EndTurnOption

  def description
    "End Turn"
  end

  def execute(player)
    puts "#{player.name} ended turn"
  end

end