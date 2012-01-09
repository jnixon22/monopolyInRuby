require "rspec"
require File.dirname(__FILE__) + "/player"
require File.dirname(__FILE__) + "/property"
require File.dirname(__FILE__) + "/board"

describe "initialize" do
  it "should Set Players to first square" do
    players = [Player.new("Player1"), Player.new("Player2")]

    squares = [
      Property.new("Square 1", :ONE, 1),
      Property.new("Square 2", :TWO, 2)
    ]

    board = Board.new(squares, players)

    players.each{|player| board.position(player).should == 0}
  end
end

describe "movePiece" do
  it "should Move player forward the correct number of squares" do
    players = [Player.new("Player1"), Player.new("Player2")]

    squares = [
      Property.new("Square 1", :ONE, 1),
      Property.new("Square 2", :TWO, 2),
      Property.new("Square 3", :THREE, 3),
      Property.new("Square 4", :FOUR, 4),
      Property.new("Square 5", :FIVE, 5)
    ]

    board = Board.new(squares, players)

    board.movePiece(players[0], 4)
    board.movePiece(players[1], 2)

    board.position(players[0]).should == 4
    board.position(players[1]).should == 2

    board.movePiece(players[1], 1)
    board.position(players[1]).should == 3
  end

  it "should Wrap player around squares" do
    players = [Player.new("Player1")]

    squares = [
      Property.new("Square 1", :ONE, 1),
      Property.new("Square 2", :TWO, 2),
      Property.new("Square 3", :THREE, 3),
      Property.new("Square 4", :FOUR, 4),
      Property.new("Square 5", :FIVE, 5)
    ]

    board = Board.new(squares, players)

    board.movePiece(players[0], 12)

    board.position(players[0]).should == 2

  end


end