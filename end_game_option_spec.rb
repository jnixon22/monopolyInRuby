require "rspec"
require File.dirname(__FILE__) + "/game_engine"
require File.dirname(__FILE__) + "/end_game_option"
require File.dirname(__FILE__) + "/player"

describe "execute" do

  it "should end game" do
    gameEngine = GameEngine.new(nil, nil)
    endGameOption = EndGameOption.new(gameEngine)
    player = Player.new("player")
    endGameOption.execute(player)

    gameEngine.gameOver.should == true
  end
end